class UsersController < ApplicationController

  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user], :as => :admin)
    if @user.save
      redirect_to users_path
    else
      render :action => "new"
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user], :as => :admin)
      redirect_to users_path
    else
      render :action => "edit"
    end
  end
  
end
