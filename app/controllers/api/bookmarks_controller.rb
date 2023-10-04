class Api::BookmarksController < ApplicationController

    before_action :authenticate_user!
    def create
        @user = User.find(params[:user_id])
        @tweet = Tweet.find(params[:tweet_id])
  
        @bookmark = bookmark.create(@user, @tweet)

        render 'api/bookmarks/create', status: :created
    end

end
