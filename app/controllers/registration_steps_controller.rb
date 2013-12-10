class RegistrationStepsController < ApplicationController
  before_filter :authenticate_user!

  include Wicked::Wizard
  steps :general, :branches, :category_selections, :logo, :print_and_online_selections, :checkout, :thank_you

  def show
    @user = current_user
    @company = Company.find(params[:company_id])

    case step
    when :print_and_online_selections
      @equipment_categories = @company.equipment_categorizables
      @material_categories = @company.material_categorizables
      @service_categories = @company.service_categorizables
    end

    render_wizard
  end

  def update
    @company = Company.find(params[:company_id])
    @company.attributes = company_params
    case step
    when :checkout
      @order = @user.orders.new
      @user.create_stripe_customer(params[:user][:stripe_card_token])
      if @order.save && @order.charge!
        flash[:notice] = "Thank you for your order!"
      else
        flash[:error] = "Error"
      end
    end

    render_wizard @company
  end

  private

  def redirect_to_finish_wizard(options = nil)
    redirect_to root_path , notice: "Thank you for signing up."
  end

  def registration_params
    params.require(:user).permit(:stripe_card_token)
  end

  def company_params
    params.require(:company).permit(:contact_name,
                                    :company_name,
                                    :sub_company_name,
                                    :address_1,
                                    :address_2,
                                    :city,
                                    :state,
                                    :zip,
                                    :country,
                                    :website,
                                    :phone_1,
                                    :phone_2,
                                    :fax,
                                    :logo_package_id,
                                    :logo,
                                    branches_attributes: [
                                      :id,
                                      :company_id,
                                      :branch_name,
                                      :address_1,
                                      :address_2,
                                      :city,
                                      :state,
                                      :zip,
                                      :country,
                                      :phone_1,
                                      :phone_2,
                                      :fax,
                                      :_destroy
                                      ],
                                    equipment_categorizable_ids: [],
                                    material_categorizable_ids: [],
                                    service_categorizable_ids: [],
                                    equipment_print_printable_ids: [],
                                    material_print_printable_ids: [],
                                    service_print_printable_ids: [],
                                    equipment_online_onlineable_ids: [],
                                    material_online_onlineable_ids: [],
                                    service_online_onlineable_ids: [],
    )

  end

end
