class Retweet < ApplicationRecord
  #Associations
  belongs_to :user
  belongs_to :tweet

  #Queries
  scope :count_of_retweet, ->(user) {
    where('user_id = ?', user).count
  }

  def self.existed_retweet(user, tweet, reply_text)
    # Verificamos si el usuario ya retwee este tweet
    if Retweet.exists?(user_id: user, tweet_id: tweet)
      return false  # El usuario ya retwee este tweet
    else
      # Crear un nuevo retweet
      Retweet.create(user_id: user, tweet_id: tweet, reply_text: reply_text)
      return true  # Retweet exitoso
    end
  end

  #Validations
  validates :reply_text,presence: true ,length: {maximum:255}
  validates :user_id, presence: true
  validates :tweet_id, presence: true


  
end
