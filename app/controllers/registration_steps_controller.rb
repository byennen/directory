class RegistrationStepsController < ApplicationController
  before_filter :authenticate_user!

  include Wicked::Wizard
  steps :step1, :step2, :step3, :step4, :step5, :step6, :confirm

  def show
    @user = current_user
    @branch = Branch.new
    render_wizard
  end

  def update
    @user = current_user
    case steps
      when :step1 || :step2
        @user.attributes = user_params
      when :step3
        @user.attributes = params[:branch]
      #  @branch = Branch.new
      #  @branch.update_attributes(user_id: @user.id)
    end

    render_wizard @user
  end

  private

  def redirect_to_finish_wizard
    redirect_to root_url, notice: "Thank you for signing up."
  end

  def user_params
    params.require(:user).permit(:logo, :remote_image_url, branches_attributes: [:name, :address_1, :address_2, :city, :state, :zip, :country, :phone_1, :phone_2, :fax])
  end
end
