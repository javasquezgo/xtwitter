class Quote < ApplicationRecord
  belongs_to :user
  belongs_to :tweet

  def self.quote_tweet(user, tweet, content)
    # Check if the user has already quoted this tweet
    if Quote.exists?(user_id: user.id, tweet_id: tweet.id)
      return false  # User has already quoted this tweet
    else
      # Create a new quote tweet
      Quote.create(user_id: user.id, tweet_id: tweet.id, content: content)
      return true  # Quote tweet successful
    end
  validates :content, presence: true, length: {minimum:1, maximum:255}
  validates :user_id, :tweet_id, presence: true



end
