class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
        #@users = User.find(params[:id])
        @user = User.find(params[:id])
        render json: @user
    end
    
    def tweets
        @users = Tweet.user_personal_tweets(params[:user_id])
        render json: @user
    end
    
    def tweets_and_replies
        @users = Tweet.retweet_and_tweets_from_user(params[:user_id])
        render json: @users
    end
end

=begin         respond_to do |format|
            format.html { render 'show.html.erb' } # Agrega esta línea si deseas manejar HTML también
            format.json { render json: @user }
        end
=end