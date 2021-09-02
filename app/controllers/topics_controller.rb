class TopicsController < ApplicationController
  before_action :navigation

  def index
  end

  def new
    @topic = Topic.new
  end

  def show
    @topic = Topic.find(params[:id])
    @tweets = @topic.tweets.all
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to topics_path
    else
      render :new
    end
  end

  private

  def topic_params
    params.require(:topic).permit(:topic)
  end

  def navigation
    @topics = Topic.all
    @users = User.all
  end

end
