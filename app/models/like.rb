class Like < ApplicationRecord

  #Associations
  belongs_to :user
  belongs_to :tweet

  #Validations
  validates :user_id, uniqueness: { scope: :tweet_id}

  #Queries
  def self.create_like(user, tweet)
    if user && tweet
      new_like = Like.new(
        user_id: user.id,
        tweet_id: tweet.id,
      )
  
      if new_like.save
        return new_like.to_json
      else
        return "Like creation failed."
      end
     
    else
      return "Both user and tweet must be provided."
    end
  end

  scope :liked_tweets_by_user, ->(user_id) {
      select("tweets.content").joins(:user, :tweet).where("likes.user_id = ?", user_id).distinct
  }

end
