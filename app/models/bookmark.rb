class Bookmark < ApplicationRecord
  #Associations
  belongs_to :user
  belongs_to :tweet

  #Validations
  validates :user_id, uniqueness: { scope: :tweet_id}

  #Queries
  def self.create_bookmark(user, tweet)
      new_bookmark = Bookmark.new(
        user_id: user.id,
        tweet_id: tweet.id,
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
end
