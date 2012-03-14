class ProyectsController < ApplicationController
	
	def index
		@proyects = Proyect.all
	end


  def new
    @proyect = Proyect.new
  end

  
  def create
    @proyect = Proyect.new params[:proyect]
    if @proyect.save
      redirect_to proyects_path
    else
      render :action => "new"
    end
  end


  def edit
    @proyect = Proyect.find(params[:id])
  end


  def update
    @proyect = Proyect.find(params[:id])

    if @proyect.update_attributes(params[:proyect])
      redirect_to proyects_path
    else
      render :action => "edit"
    end
  end
	
end
