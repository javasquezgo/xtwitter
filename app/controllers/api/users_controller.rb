class Api::UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end 

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @user = User.new(user_params)

        if @user.save
            render json: @user, status: :created
        else
            render json: @user.errors, status: :unprocessable_entity
        end
    end
   
    def tweets
        @user = Tweet.user_personal_tweets(params[:id])
        render json: @user
    end
   
    def tweets_and_replies
        @users = Tweet.retweet_and_tweets_from_user(params[:user_id])
        render json: @users
    end

    private
    def user_params
        params.require(:user).permit(:user_name, :full_name, :password, :user_email)
    end

end
