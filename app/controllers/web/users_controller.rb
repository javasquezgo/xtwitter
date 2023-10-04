class Web::UsersController < ApplicationController
    def index
        @users = User.all
    end

    def tweets
        @user = User.find(params[:user_id])
        @users = Tweet.user_personal_tweets(params[:user_id])
    end

    def tweets_and_replies
        @user = User.find(params[:user_id])
        @users = Tweet.retweet_and_tweets_from_user(params[:user_id])
    end

end