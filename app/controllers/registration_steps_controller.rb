class RegistrationStepsController < ApplicationController
  include Wicked::Wizard
  steps :step1, :step2, :step3, :step4, :step5, :step6, :confirm

  def show
    @user = current_user
    render_wizard
  end

  def update
    @user = current_user
    @user.attributes = params[:user]
    render_wizard @user
  end

  private

  def redirect_to_finish_wizard
    redirect_to root_url, notice: "Thank you for signing up."
  end
end
