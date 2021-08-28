class UsersController < ApplicationController
  before_action :setup, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
    @tweets = @user.tweets
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      flash[:notice] = "Successfully signed up"
      redirect_to users_path
    else
      render :new
    end
  end

  def edit
  end


  def update
    if @user.update(user_params)
      flash[:notice] = "Successfully updated profile."
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

  def setup
    @user = User.find(params[:id])
  end
  
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
