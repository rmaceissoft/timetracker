class EndCustomersController < ApplicationController
  def index
    @end_customers = EndCustomer.all
  end

  def new
    @end_customer = EndCustomer.new
  end

  def create
    @end_customer = EndCustomer.new(params[:end_customer])
    if @end_customer.save
      redirect_to end_customers_path
    else
      render :action => "new"
    end
  end

  def edit
    @end_customer = EndCustomer.find(params[:id])
  end

  def update
    @end_customer = EndCustomer.find(params[:id])
    if @end_customer.update_attributes(params[:end_customer])
      redirect_to end_customers_path
    else
      render :action => "edit"
    end


  end

end
