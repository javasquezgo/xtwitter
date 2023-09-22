class Like < ApplicationRecord
    belongs_to :user
    belongs_to :tweet

    validates :user_id, uniqueness: { scope: :tweet_id, message: "You can only like a tweet once" }

    #Like a tweet: Create a method that encapsulates the like logic accepting a user

    scope :liked_tweets_by_user, ->(user_id) {
        joins(:tweets, :likes)
          .select("tweets.content")
          .where("users.id = ?", user_id)
          .distinct
      }
end
