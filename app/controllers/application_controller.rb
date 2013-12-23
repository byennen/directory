class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

  before_filter :fetch_settings

  def fetch_settings
    @settings = Setting.first
  end

  def after_sign_in_path_for(resource)
    if company = resource.companies.not_complete.last
      company_registration_steps_path(company)
    else
      root_path
    end
  end

end
