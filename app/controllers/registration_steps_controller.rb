class RegistrationStepsController < ApplicationController
  before_filter :authenticate_user!

  include Wicked::Wizard
  steps :start, :general, :branches, :category_selections, :logo, :print_and_online_selections, :checkout, :thank_you

  def show
    @user = current_user

    case step
    when :general
      @company = Company.new
    when :branches
      @company = Company.find session[:company_id]
    when :category_selections
      @company = Company.find session[:company_id]
    when :logo
      @company = Company.find session[:company_id]
    when :print_and_online_selections
      @company = Company.find session[:company_id]
      @equipment_categories = @company.equipments
      @material_categories = @company.materials
      @service_categories = @company.services
    end

    render_wizard
  end

  def update
    case step
    when :general
      @company = Company.new(company_params)
      @company.user_id = current_user.id
      @company.save
      session[:company_id] = @company.id
    when :branches
      @company = Company.find session[:company_id]
      @company.attributes = company_params
    when :category_selections
      @company = Company.find session[:company_id]
      @company.attributes = company_params
    when :logo
      @company = Company.find session[:company_id]
      @company.attributes = company_params
    when :print_and_online_selections
      @company = Company.find session[:company_id]
      @company.attributes = company_params
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
  end

  private

  def redirect_to_finish_wizard(options = nil)
    redirect_to root_path , notice: "Thank you for signing up."
  end

  def registration_params
    params.require(:user).permit(:stripe_card_token)
  end

  def company_params
    params.require(:company).permit(:contact_name,
                                    :company_name,
                                    :sub_company_name,
                                    :address_1,
                                    :address_2,
                                    :city,
                                    :state,
                                    :zip,
                                    :country,
                                    :website,
                                    :phone_1,
                                    :phone_2,
                                    :fax,
                                    :logo_package_id,
                                    :logo,
                                    branches_attributes: [
                                      :id,
                                      :company_id,
                                      :branch_name,
                                      :address_1,
                                      :address_2,
                                      :city,
                                      :state,
                                      :zip,
                                      :country,
                                      :phone_1,
                                      :phone_2,
                                      :fax,
                                      :_destroy
                                      ],
                                    equipment_ids: [],
                                    material_ids: [],
                                    service_ids: [],
                                    equipment_printable_ids: []
    )

  end

end
