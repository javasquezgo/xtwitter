class User < ApplicationRecord
    has_many :tweets
    has_many :likes
    has_many :retweets
    has_many :bookmarks
end
