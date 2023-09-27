class Retweet < ApplicationRecord
  belongs_to :user
  belongs_to :tweet

  validates :reply_text, length: {maximum:255}

  #Retweets counts: Create a new scope that retrieves the number of retweets
  scope :count_of_retweet, ->(user) {
    where('user_id = ?', user).count
  }

  def self.retweet(user, tweet)
    # Verificamos si el usuario ya retwee este tweet
    if Retweet.exists?(user_id: user.id, tweet_id: tweet.id)
      return false  # El usuario ya retwee este tweet
    else
      # Crear un nuevo retweet
      Retweet.create(user_id: user.id, tweet_id: tweet.id)
      return true  # Retweet exitoso
    end
  end

end
