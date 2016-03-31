class Quotes::BuildController < ApplicationController
  include Wicked::Wizard

  steps :add_processing_types, :add_finacial

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
    @quote.update_attributes(params[:quote])
    render_wizard @quote
  end
end
