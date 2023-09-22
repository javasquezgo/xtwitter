class Retweet < ApplicationRecord
  belongs_to :user
  belongs_to :tweet

  validates :reply_text, length: {maximum:255}

  #Retweets counts: Create a new scope that retrieves the number of retweets
  scope :count_of_retweet, ->(user_id) {
    joins("JOIN retweets r ON users.id = r.user_id")
      .joins("LEFT JOIN tweets t ON t.id = r.tweet_id")
      .select("u.user_name, t.content, r.reply_text")
      .where("users.id = ?", user_id)
  }

  def self.retweeted_tweets(user_id)
    select('retweets.reply_text, tweets.content')
      .joins('JOIN retweets ON users.id = retweets.user_id')
      .joins('LEFT JOIN tweets ON tweets.id = retweets.tweet_id')
      .where('users.id = ?', user_id)
  end


end
