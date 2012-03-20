class ProyectPositionsController < ApplicationController

  before_filter :authenticate_user!

  def index
    @proyect_positions = ProyectPosition.all
  end

  def new
    @proyect_position = ProyectPosition.new
  end

  def create
    @proyect_position = ProyectPosition.new params[:proyect_position]
    if @proyect_position.save
      redirect_to proyect_positions_path
    else
      render :action => "new"
    end
  end

  def edit
    @proyect_position = ProyectPosition.find(params[:id])
  end

  def update
    @proyect_position = ProyectPosition.find(params[:id])
    if @proyect_position.update_attributes(params[:proyect_position])
      redirect_to proyect_positions_path
    else
      render :action => "edit"
    end
  end
end
