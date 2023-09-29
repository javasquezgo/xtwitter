class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def tweets
        @users = Tweet.user_personal_tweets(params[:user_id])
    end

    def tweets_and_replies
        @user = Tweet.retweet_and_tweets_from_user(params[:user_id])
    end
end
