class User < ApplicationRecord
    has_many :tweets
    has_many :likes
    has_many :retweets
    has_many :quotes
    has_many :bookmarks

    validates :user_name, presence: true, uniqueness: true, length: {minimum:4 }
    validates :user_email, presence: true, uniqueness: true
    validates :full_name, presence: true, length: {minimum:4 }
    validates :password, presence: true, length: {minimum:12}, format: { with: /\A(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@\/\*\-\+\_])[A-Za-z\d!@\/\*\-\+\_\/\^\[\!\@\#\$\%\^\&\*\(\)\,\.\?\"\:\{\}\|\<\>\]\+\$\/]{12,}\z/ }
end
