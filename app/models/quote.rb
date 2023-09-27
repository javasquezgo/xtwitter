class Quote < ApplicationRecord
  #Associations
  belongs_to :user
  belongs_to :tweet

  #Validations
  validates :content, presence: true, length: {minimum:1, maximum:255}
  validates :user_id, :tweet_id, presence: true

  #Queries
  def self.quote_tweet(user, tweet, content)
    # Check if the user has already quoted this tweet
    if Quote.exists?(user: user, tweet: tweet)
      false  # User has already quoted this tweet
    else
      # Create a new quote tweet
      Quote.create(user_id: user, tweet_id: tweet, content: content)
      true  # Quote tweet successful
    end
  end

end