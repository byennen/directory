class CompaniesController < ApplicationController
  before_filter :authenticate_user!, only: [:edit, :update]
  before_filter :ensure_company, only: [:edit, :update]

  def index
    if params[:search].blank?
      @companies = Company.where("company_name is not null").page(params[:page]).per(15)
    elsif letter = params[:search][:letter]
      @companies = Company.search_letter(letter).page(params[:page]).per(15)
    elsif state = params[:search][:state]
      @companies = Company.search_state(state).page(params[:page]).per(15)
    elsif country = params[:search][:country]
      @companies = Company.search_country(country).page(params[:page]).per(15)
    elsif params[:search][:term] && params[:search][:cat].blank?
      @companies = Company.search "*#{params[:search][:term]}*", page: params[:page], per_page: 15
    elsif params[:search][:cat] == "equipment"
      @companies = Company.search conditions: {equipment_categories: "*#{params[:search][:term]}*", category_type: params[:search][:cat]}, page: params[:page], per_page: 15
    elsif params[:search][:cat] == "material"
      @companies = Company.search conditions: {material_categories: "*#{params[:search][:term]}*", category_type: params[:search][:cat]}, page: params[:page], per_page: 15
    elsif params[:search][:cat] == "service"
      @companies = Company.search conditions: {service_categories: "*#{params[:search][:term]}*", category_type: params[:search][:cat]}, page: params[:page], per_page: 15
    end
  end

  def my_companies
    @companies = current_user.companies.page(params[:page]).per(15)
    render :index
  end

  def show
    @company = Company.find(params[:id])
  end

  def update
    if @company.update_attributes(company_params)
      redirect_to @company
    else
      render :edit
    end
  end

  def update_logo_package
    @company = Company.find params[:id]
    @company.update_attribute :logo_package_id, params[:logo_package_id]
    render nothing: true
  end

  private
  def ensure_company
    @company = Company.find(params[:id])
    redirect_to root_path, notice: "You not an author of this company" unless @company.user == current_user
  end

  def company_params
    params.require(:company).permit(:user_id, :contact_name, :company_name, :sub_company_name,
                                    :address_1, :address_2, :city, :addr_state, :zip, :country,
                                    :website, :phone_1, :phone_2, :fax, :logo_package_id, :logo,
                                    branches_attributes: [
                                      :id, :company_id, :branch_name,
                                      :address_1, :address_2, :city, :state, :zip, :country, :phone_1, :phone_2,
                                      :fax, :_destroy
                                      ]
    )

  end
end
