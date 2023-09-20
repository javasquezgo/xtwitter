class User < ApplicationRecord
  has_many :bookmarks
  has_many :likes
  has_many :tweets, foreign_key: 'id_user'
end
