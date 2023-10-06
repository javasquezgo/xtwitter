class TweetsController < ApplicationController

  def new
    @tweets = Tweet.all
  end

  def create
    
  end

  def like
  @like = Like.new(like_params)
    
  if @like.save
    render json: @like, status: :created
  else
    render json: @like.errors, status: :unprocessable_entity
  end
  end
      
  private


  def tweet_params
    params.require(:tweet).permit(:content)
  end

  def like_params
    params.require(:like).permit(:user_id, :tweet_id)
  end
  
end