class LeadsController < ApplicationController

  def new
    @lead = Lead.new
  end

  def create
    @lead = Lead.new(lead_params)
    if @lead.save
      redirect_to edit_lead_path(@lead), notice: 'On to Step 2!'
    else
      render :new
    end
  end

  def show
    @lead = Lead.find(params[:id])
  end

  def edit
    @lead = Lead.find(params[:id])
  end

  def update
    @lead = Lead.find(params[:id])
    if @lead.update(lead_params)
      redirect_to lead_path(@lead), notice: 'Booya!'
    else
      render :edit
    end
  end


  private

  def lead_params
    params.require(:lead).permit(:first_name, :last_name, :phone, :email)
  end





end