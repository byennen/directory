class ConfirmationsController < Devise::ConfirmationsController
  private

  def after_confirmation_path_for(resource_name, resource)
    @user = current_user
    company_registration_steps_path(@user.company)
  end
end
