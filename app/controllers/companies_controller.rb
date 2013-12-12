class CompaniesController < ApplicationController

  def index
    if params[:search].blank?
      @companies = Company.where("company_name is not null").page(params[:page]).per(15)
    elsif params[:search][:term] && params[:search][:cat].blank?
      @companies = Company.search "*#{params[:search][:term]}*", page: params[:page], per_page: 15
    else
      @companies = Company.search conditions: {categories: "*#{params[:search][:term]}*", category_type: params[:search][:cat]}, page: params[:page], per_page: 15  
    end
  end

  def show
    @company = Company.find(params[:id])
  end

end
