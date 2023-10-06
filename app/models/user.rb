class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    #Associations
    has_many :tweets
    has_many :likes
    has_many :retweets
    has_many :quotes
    has_many :bookmarks
    has_many :followers
    has_many :replies

    #Queries
    scope :count_followers, ->(user){
        joins(:followers).where('followers.user_id = ?', user ).count
    }

    scope :count_following, ->(user){
        joins(:followers).select(:following).where('user_id = ?', user ).count
    }

    #Validations
    validates :user_name, presence: true, uniqueness: true, length: {minimum:4 }
    validates :user_email, presence: true, uniqueness: true
    validates :full_name, presence: true, length: {minimum:4 }
    validates :password, presence: true, length: {minimum:12}, format: { with: /\A(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@\/\*\-\+\_])[A-Za-z\d!@\/\*\-\+\_\/\^\[\!\@\#\$\%\^\&\*\(\)\,\.\?\"\:\{\}\|\<\>\]\+\$\/]{12,}\z/ }

end
