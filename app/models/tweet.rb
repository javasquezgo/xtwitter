class Tweet < ApplicationRecord
    #Associations
    belongs_to :user
    has_many :likes
    has_many :retweets
    has_many :bookmarks
    has_many :tags
    has_and_belongs_to_many :hashtags
    has_many :quotes
    has_many :replies

    #Queries
    validates :content,presence: true ,length: {minimum:1, maximum:255}
    validates :user_id, presence: true

    #Validations
    scope :user_personal_tweets, ->(user){
     select(:content).joins(:user).where('tweets.user_id = ?', user)
    }

    scope :retweet_and_tweets_from_user, ->(user){
      select(:content).joins(:user, :retweets)
      .where('users.id = ? ', 1)
    }

end
