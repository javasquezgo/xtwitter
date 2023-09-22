class Quote < ApplicationRecord
  belongs_to :user
  belongs_to :tweet

  scope :count_quotes_by_user, ->(user_id) {
    joins(:user)
    .where(users: { id: user_id })
    .count('tweets.content')
  }

  #QuoteTweet: Create a method that encapsulates the retweet logic accepting a user an a text body as parameter
  def replies_with_period
    retweets.joins(:tweet).where(users: { id: id }).where("retweets.reply_text LIKE ?", "%#{reply_text}%").pluck(:reply_text)
  end


end
