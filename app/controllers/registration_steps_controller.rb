class RegistrationStepsController < ApplicationController
  before_filter :authenticate_user!

  include Wicked::Wizard
  steps :start, :general, :logo, :branches, :category_selections, :print_and_online_selections, :checkout, :thank_you

  def show
    @user = current_user
    render_wizard
  end

  def update
    @user = current_user
    case steps
      when :general || :logo
        @user.attributes = user_params
        @user.save
      when :branches
        @user.attributes = params[:branch]
        @user.save
      when :category_selections
        @user.attributes = params[:user_category_selections]
        @equipment_categories = Category.where(category_type: 'Equipment')
        @service_categories = Category.where(category_type: 'Service')
        @user.save
      when :print_and_online_selections
        @user.attributes = params[:branch]
        @categories = Category.all
        @user.save
      when :checkout
        @order = @user.orders.new
        @user.create_stripe_customer(params[:user][:stripe_card_token])
        if @order.save && @order.charge!
          flash[:notice] = "Thank you for your order!"
        end
    end

    render_wizard @user
  end

  private

  def redirect_to_finish_wizard(options = nil)
    redirect_to root_path , notice: "Thank you for signing up."
  end

  def user_params
    params.require(:user).permit(:logo, branches_attributes: [:name, :address_1, :address_2, :city, :state, :zip, :country, :phone_1, :phone_2, :fax])
  end
end
