class Quotes::BuildController < ApplicationController
  include Wicked::Wizard

  steps :add_processing_types, :add_finacial, :thank_you

  def new
    redirect_to wizard_path(steps.first)
  end

  def create
    @quote = Quote.create
    redirect_to wizard_path(steps.first, :quote_id => @quote.id)
  end

  def show
    @quote = Quote.find(params[:quote_id])
    render_wizard
  end

  def update
    @quote = Quote.find(params[:quote_id])
    @quote.update(quote_params)
    render_wizard @quote
  end

private

  def quote_params
    params.require(:quote).permit(:first_name, :last_name, :phone, :email,
     :business_name, :state, :payment_methods, :bm_business_type, :ecomm_business_type,
     :annual_average_processing_volume, :average_sale_amount,
     :last_month_processing_volume, :last_month_processing_fees, :chargebacks)
  end

end
