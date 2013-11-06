class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  def index
    @companies = Company.all
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:contact_name, :company_name, :sub_company_name, :address_1, :address_2, :city, :state, :zip, :country, :website, :phone_1, :phone_2, :fax, :logo_package_id, :logo)
    end
end
