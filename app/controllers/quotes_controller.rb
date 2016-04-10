class QuotesController < ApplicationController


  def index
    @quotes = Quote.all
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(quote_params)
    if @quote.save
      redirect_to new_quote_build_path(@quote)
    else
      render :new
    end
  end

  def show
    @quote = Quote.find(params[:id])
  end

  private

  def quote_params
    params.require(:quote).permit(:first_name, :last_name, :phone, :email,
     :business_name, :state, :payment_methods, :bm_business_type, :ecomm_business_type,
     :annual_average_processing_volume, :average_sale_amount,
     :last_month_processing_volume, :last_month_processing_fees, :chargebacks)
  end
end
