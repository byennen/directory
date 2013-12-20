class Admin::SettingsController < Admin::ApplicationController
  before_action :set_setting, only: [:edit, :update]
  load_and_authorize_resource

  def edit
  end

  def update
    if @setting.update(setting_params)
      redirect_to admin_companies_path, notice: 'Setting was successfully updated.'
    else
      render action: 'edit'
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_setting
    @setting = Setting.find('1')
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def setting_params
    params.require(:setting).permit(:print_edition_deadline)
  end
end
