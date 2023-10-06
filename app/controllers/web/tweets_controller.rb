class Web::TweetsController < ApplicationController

    def index
        @tweets = Tweet.all
    end
end
