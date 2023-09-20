class Tweet < ApplicationRecord
  belongs_to :user, foreign_key: 'id_user'
  has_many :bookmarks
  has_many :likes
  has_many :hashtags
  belongs_to :retweeted_tweet, class_name: 'Tweet', foreign_key: 'retweet', optional: true
  has_one :quote, foreign_key: 'id_tweet', primary_key: 'id_tweet'

end
