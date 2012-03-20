class TasksController < ApplicationController

  before_filter :authenticate_user!

  def index
    @tasks = current_user.tasks
  end

  def new
    @task = Task.new
  end

  def create
    @task = current_user.tasks.build(params[:task])
    if @task.save
      redirect_to tasks_path
    else
      render :action => "new"
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(params[:task])
      redirect_to tasks_path
    else
      render :action => "edit"
    end

  end
  
end
