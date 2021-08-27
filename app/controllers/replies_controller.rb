class RepliesController < ApplicationController
  def index
    @reply = Reply.all
  end

  def new
    @reply = Reply.new
  end

  def create
    @reply = Reply.new(reply_params)
    if @reply.save
      redirect_to reply_path
    else
      render :new
    end
  end

  private

  def reply_params
    params.require(:reply).permit(:reply)
  end
end
