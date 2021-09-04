class RepliesController < ApplicationController
  before_action :navigation
  before_action :setup, only: [:show, :edit, :update, :destroy]
  before_action :require_user

  def index
  end

  def new
    @tweet = Tweet.find(params[:tweet_id])
    @reply = Reply.new
  end

  def create
    @reply = Reply.new(reply_params)
    @reply.user_id = current_user.id
    @reply.tweet_id = params[:tweet_id]
    if @reply.save
      redirect_to tweets_path
    else
      redirect_to tweets_path
    end
  end

  def edit
  end

  def update
    @reply.tweet_id = params[:tweet_id]
    if @reply.update(reply_params)
      flash[:notice] = "Successfully updated tweet."
      redirect_to @reply
    else
      render :edit
    end
  end

  def destroy
    @reply.destroy
    redirect_to tweets_path
  end

  private

  def setup
    @tweet = Tweet.find(params[:tweet_id])
    @reply = Reply.find(params[:id])
  end

  def navigation
    @tweets = Tweet.all.order('created_at DESC')
    @topics = Topic.all.order('created_at DESC')
    @users = User.all.order('created_at DESC')
    @replies = Reply.all.order('created_at DESC')
  end

  def reply_params
    params.require(:reply).permit(:reply,:user_id,:tweet_id, :duedate, :status, :user)
  end
end
