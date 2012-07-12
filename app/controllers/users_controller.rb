class UsersController < ApplicationController
  before_filter :login_required, :except => [:index, :show, :new, :create]
  def new
	@user = User.new
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to calhome_path
    else
      render :action => 'new'
    end
  end
  def show
    @user = User.find(params[:id])
  end
end
