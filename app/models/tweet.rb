class Tweet < ApplicationRecord
    belongs_to :user
    has_many :likes
    has_many :retweets
    has_many :bookmarks
    has_many :tags
    has_and_belongs_to_many :hashtags
end
