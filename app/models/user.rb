class User < ApplicationRecord
  has_many :tweets, foreign_key: 'id_user'
  has_many :bookmarks, foreign_key: 'id_user'
  has_many :likes, foreign_key: 'id_user'
  has_many :followers, foreign_key: 'following_id', class_name: 'Follower'
  has_many :following, foreign_key: 'follower_id', class_name: 'Follower'

end
