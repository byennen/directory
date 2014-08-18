class RegistrationStepsController < ApplicationController
  before_filter :authenticate_user!, :ensure_company

  include Wicked::Wizard
  steps :general, :branches, :category_selections, :logo, :print_and_online_selections, :checkout, :thank_you

  def show
    @user = current_user
    if @company.order
      redirect_to @company
    else
      if (params[:id] != @company.state && params[:id] != 'thank_you')
        skip_step
      end
      case step
      when :print_and_online_selections
        @equipment_categories = @company.equipment_categorizables
        @material_categories = @company.material_categorizables
        @service_categories = @company.service_categorizables
      end

      render_wizard
    end
  end

  def update
    @company.attributes = company_params if params[:company]
    unless @company.next
      @user = current_user
      render_wizard
    else
      case step
      when :logo
        @company.save
        respond_to :js
      when :checkout
        @order = @company.order || @company.build_order
        @order.bill_me_later = params[:bill_me_later]
        @order.price_cents = params[:price]
        @order.user_id = current_user.id
        if @order.save
          if @order.bill_me_later || @order.price_cents=="0"
            flash[:notice] = "Thank you for your order! You may need to update payment later"
          else
            current_user.create_stripe_customer(params[:user][:stripe_card_token])
            if @order.charge!
              flash[:notice] = "Thank you for your order!"
            else
              flash[:error] = @order.errors.full_messages.join(", ")
            end
          end
          if Rails.env.development?
            system "rake ts:index"
          else
            system "heroku run bundle exec flying-sphinx index"
          end
        else
          flash[:error] = @order.errors.full_messages.join(", ")
        end
        render_wizard @company
      else
        render_wizard @company
      end
    end
  end

  private
  def ensure_company
    @company = Company.find(params[:company_id])
    redirect_to root_path, notice: "You not an author of this company" unless @company.user == current_user
  end

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
                                    :addr_state,
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
                                    equipment_sub_categorizable_ids: [],
                                    material_sub_categorizable_ids: [],
                                    service_sub_categorizable_ids: [],
                                    equipment_print_printable_ids: [],
                                    material_print_printable_ids: [],
                                    service_print_printable_ids: [],
                                    equipment_online_onlineable_ids: [],
                                    material_online_onlineable_ids: [],
                                    service_online_onlineable_ids: [],
    )

  end

end
