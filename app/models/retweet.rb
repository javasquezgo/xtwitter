class Retweet < ApplicationRecord
  #Associations
  belongs_to :user
  belongs_to :tweet

  #Queries
  scope :count_of_retweet, ->(user) {
    where('user_id = ?', user).count
  }

  def self.retweet(user, tweet)
    # Verificamos si el usuario ya retwee este tweet
    if Retweet.exists?(user_id: user, tweet_id: tweet)
      return false  # El usuario ya retwee este tweet
    else
      # Crear un nuevo retweet
      Retweet.create(user_id: user, tweet_id: tweet)
      return true  # Retweet exitoso
    end
  end

  #Validations
  validates :reply_text, length: {maximum:255}
  validates :user_id, presence: true
  validates :tweet_id, presence: true


  
end
