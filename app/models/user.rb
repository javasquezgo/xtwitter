class User < ApplicationRecord
  has_many :tweets, foreign_key: 'id_user'
  has_many :bookmarks, foreign_key: 'id_user'
  has_many :likes, foreign_key: 'id_user'
  has_many :followers, foreign_key: 'following_id', class_name: 'Follower'
  has_many :following, foreign_key: 'follower_id', class_name: 'Follower'

  validates :email_user, presence: true, uniqueness: true
  validates :user_name, presence: true, uniqueness: true
  validates :password, presence: true, length: {minimum:12}, format: { with: with: /\A(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@\/\*\-\+\_])[A-Za-z\d!@\/\*\-\+\_\/\^\[\!\@\#\$\%\^\&\*\(\)\,\.\?\"\:\{\}\|\<\>\]\+\$\/]{12,}\z/ }

end
