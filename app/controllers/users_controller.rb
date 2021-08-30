class UsersController < ApplicationController
  before_action :setup, only: [:show, :edit, :update, :destroy]
  before_action :require_user, only: [:edit, :update]
  before_action :require_same_user, only: [:edit, :update]

  def index
    @users = User.all

    render json: UserSerializer.new(@users).serialized_json
  end

  def show
    @tweets = @user.tweets

    render json: UserSerializer.new(@tweets).serialized_json
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      session[:user_id] = @user.id
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

  def require_same_user
    if current_user !=@user
      flash[:alert] = "You can only edit your own account"
      redirect_to @user
    end
  end
end
