class Admin::ApplicationController < ActionController::Base

  layout 'admin'

  before_filter :authenticate_user!, :authorize_admin

  def authorize_admin
    redirect_to root_path, notice: "You can't access retricted area" unless current_user.has_role?(:admin)
  end
end
