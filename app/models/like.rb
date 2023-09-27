class Like < ApplicationRecord
    #Associations
    belongs_to :user
    belongs_to :tweet

    #Validations
    validates :user_id, uniqueness: { scope: :tweet_id}
    #validates :user_id, uniqueness: { scope: :tweet_id, message: "You can only like a tweet once" }

    #Queries
    scope :liked_tweets_by_user, ->(user_id) {
        select("tweets.content")
        .joins(:user, :tweet)
        .where("likes.user_id = ?", user_id)
        .distinct
      }
end
