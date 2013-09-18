class RegistrationStepsController < ApplicationController
  before_filter :authenticate_user!

  include Wicked::Wizard
  steps :step1, :step2, :step3, :step4, :step5, :step6, :confirm

  def show
    @user = current_user
    render_wizard
  end

  def update
    @user = current_user
    case steps
      when :step1 || :step2
        @user.attributes = user_params
        @user.save
      when :step3
        @user.attributes = params[:branch]
        @user.save
      when :step4
        @user.attributes = params[:branch]
        @equipment_categories = Category.where(category_type: 'Equipment')
        @service_categories = Category.where(category_type: 'Service')
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
