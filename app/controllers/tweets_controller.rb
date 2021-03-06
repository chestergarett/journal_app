class TweetsController < ApplicationController
  before_action :navigation
  before_action :setup, only: [:show, :edit, :update, :destroy]
  before_action :require_user
  before_action :require_same_user, only: [:edit, :update, :destroy]

  def index
  end

  def show
  end
  
  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user = current_user
    if @tweet.save
      flash[:notice] = "Tweet has been posted"
      redirect_to @tweet
    else
      flash[:alert] = "Invalid inputs. Please check form."
      render :new
    end
  end

  def edit
  end

  def update
    if @tweet.update(tweet_params)
      flash[:notice] = "Successfully updated tweet."
      redirect_to @tweet
    else
      render :edit
    end
  end

  def destroy
    @tweet.destroy
    redirect_to tweets_path
  end

  private

  def setup
    @tweet = Tweet.find(params[:id])
  end

  def navigation
    @tweets = Tweet.all.order('created_at DESC')
    @topics_top = Topic.all.limit(5)
    @topics = Topic.all
    @users_top = User.all.limit(5)
    @users = User.all.order('created_at DESC')
  end

  def tweet_params
    params.require(:tweet).permit(:tweet, topic_ids: [])
  end

  def require_same_user
    if current_user != @tweet.user
      flash[:alert] = "You don't have rights to view this page."
      redirect_to @tweet
    end
  end
end