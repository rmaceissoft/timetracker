class ProyectStatusesController < ApplicationController
  
  before_filter :authenticate_user!

  def index
    @proyect_statuses = ProyectStatus.all
  end

  def new
    @proyect_status = ProyectStatus.new
  end

  def create
    @proyect_status = ProyectStatus.new(params[:proyect_status])
    if @proyect_status.save
      redirect_to proyect_statuses_path
    else
      render :action => "new"
    end
  end

  def edit
    @proyect_status = ProyectStatus.find(params[:id])
  end

  def update
    @proyect_status = ProyectStatus.find(params[:id])
    if @proyect_status.update_attributes(params[:proyect_status])
      redirect_to proyect_statuses_path
    else
      render :action => "edit"
    end
    
  end
end
