class CompaniesController < ApplicationController

  def index
    unless params[:search].blank?
      @companies = Company.search "*#{params[:search][:term]}*", page: params[:page], per_page: 15
    else
      @companies = Company.where("company_name is not null").page(params[:page]).per(15)
    end
  end

  def show
    @company = Company.find(params[:id])
  end

end
