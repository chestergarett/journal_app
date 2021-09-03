class UsersController < ApplicationController
  before_action :navigation
  before_action :setup, only: [:show, :edit, :update, :destroy]
  before_action :require_user, except: [:new, :create]
  before_action :require_same_user, only: [:edit, :update]

  def index
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
      session[:user_id] = @user.id
      redirect_to users_path
    else
      render :new
    end
  end

  def edit
    @tweets = @user.tweets
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

  def navigation
    @topics = Topic.all
    @topics_top = Topic.all.limit(5)
    @users = User.all
    @users_top = User.all.limit(5)
  end
  
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

  def require_same_user
    if current_user !=@user
      flash[:alert] = "You can only edit your own account"
      redirect_to @user
    end
  end
end
