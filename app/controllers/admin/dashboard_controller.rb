class Admin::DashboardController < Admin::ApplicationController
  def index
    unless current_user.admin?
      redirect_to root_path
    end
  end
end
