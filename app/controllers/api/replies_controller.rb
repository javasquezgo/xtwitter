class Api::RepliesController < ApplicationController

    before_action :authenticate_user!
    def create
        @user = User.find(params[:user_id])
        @tweet = Tweet.find(params[:tweet_id])
  
        @reply = Reply.create(@user, @tweet)

        render 'api/likes/create', status: :created
    end

end
