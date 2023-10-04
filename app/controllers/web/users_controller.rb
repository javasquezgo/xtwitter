class Web::UsersController < ApplicationController
    def index
        @users = User.all
    end

    def tweets
        @user = User.find(params[:user_id])
        @users = Tweet.user_personal_tweets(params[:user_id])
    end

    def show
        @users = User.find(params[:id])
    end

    def tweets_and_replies
        @user = User.find(params[:user_id])
        @users = Tweet.retweet_and_tweets_from_user(params[:user_id])
    end

    def new 
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to post_path(@user)
        else 
            render :new
        end
    end

    private

    def user_params
        params.require(:user).permit(:user_name, :full_name, :user_email, :password)
    end

end