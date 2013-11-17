class RegistrationStepsController < ApplicationController
  before_filter :authenticate_user!

  include Wicked::Wizard
  steps :start, :general, :branches, :category_selections, :logo, :print_and_online_selections, :checkout, :thank_you

  def show
    @user = current_user
    @company = Company.new
    render_wizard
  end

  def update
    case step
    when :general
      @company = Company.new(company_params)
      @company.save
      session[:company_id] = @company.id
    when :branches
      @company = Company.find session[:company_id]
      @company.attributes = params[:branch]
      @company.save
    when :category_selections
      @user.attributes = params[:user_category_selections]
      @equipment_categories = Category.where(category_type: 'Equipment')
      @service_categories = Category.where(category_type: 'Service')
      @user.save
    when :logo
      @company = Company.find session[:company_id]
      @company.attributes = company_params
      @company.save
    when :print_and_online_selections
      @user.attributes = params[:branch]
      @categories = Category.all
      @user.save
    when :checkout
      @order = @user.orders.new
      @user.create_stripe_customer(params[:user][:stripe_card_token])
      if @order.save && @order.charge!
        flash[:notice] = "Thank you for your order!"
      else
        flash[:error] = "Error"
      end
    end

    render_wizard @company

    #case steps
    #when :general
    #  @company = Company.new
    #  @company = Company.update(company_params)
    #end
    #when :logo
    #
    #when :branches
    #  @company.attributes = params[:branch]
    #  @company.save
    #when :category_selections
    #  @user.attributes = params[:user_category_selections]
    #  @equipment_categories = Category.where(category_type: 'Equipment')
    #  @service_categories = Category.where(category_type: 'Service')
    #  @user.save
    #when :print_and_online_selections
    #  @user.attributes = params[:branch]
    #  @categories = Category.all
    #  @user.save
    #when :checkout
    #  @order = @user.orders.new
    #  @user.create_stripe_customer(params[:user][:stripe_card_token])
    #  if @order.save && @order.charge!
    #    flash[:notice] = "Thank you for your order!"
    #  end
    #end
  end

  private

  def redirect_to_finish_wizard(options = nil)
    redirect_to root_path , notice: "Thank you for signing up."
  end

  def registration_params
    params.require(:user).permit(:stripe_card_token)
  end

  #def company_params
  #  params.require(:company).permit(company_attributes: [:company_name, :sub_company_name, :address_1,
  #                                                       :address_2, :city, :state, :zip, :country,
  #                                                       :website, :phone_1, :phone_2, :fax, :logo,
  #                                                       :logo_package_id],
  #                                  branches_attributes: [:name, :address_1, :address_2, :city, :state,
  #                                                        :zip, :country, :phone_1, :phone_2, :fax])
  #end

  def company_params
    params.require(:company).permit(:contact_name, :company_name, :sub_company_name, :address_1, :address_2,
                                    :city, :state, :zip, :country, :website, :phone_1, :phone_2, :fax, :logo_package_id, :logo,
                                    branches_attributes: [:name, :address_1, :address_2, :city, :state, :zip, :country, :phone_1, :phone_2, :fax])
  end
end
