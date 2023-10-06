class Reply < ApplicationRecord
  #Associations
  belongs_to :user
  belongs_to :tweet

  #Validations
  validates :reply_text, presence: true, length: {minimum:1, maximum:255}

  #Queries
  def self.create_bookmark(user, tweet, text)
    new_bookmark = Bookmark.new(
      user_id: user.id,
      tweet_id: tweet.id,
      reply_text: text
    )

    if new_bookmark.save
      return new_bookmark.to_json
    else
      return "Bookmark creation failed."
    end
  end

  scope :count_of_bookmarks, ->(user) {
    where('user_id = ?', user).count
  }

  scope :user_personal_tweets, ->(user){
    select(:reply_text).joins(:user, :tweet).where('replies.user_id = ?', user)
  }
  
end
