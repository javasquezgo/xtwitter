class Hashtag < ApplicationRecord
    has_and_belongs_to_many :tweets, join_table: 'tweet_hashtags', foreign_key: 'id_hashtag', association_foreign_key: 'id_tweet'
end
