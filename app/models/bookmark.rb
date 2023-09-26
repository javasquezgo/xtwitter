class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :tweet

  validates :user_id, uniqueness: { scope: :tweet_id}

  #Bookmarked tweets: Creates a new scope that retrieves the bookmarked tweets by a user
  scope :user_bookmarks, ->(user_id) {
    joins(:tweets, :bookmarks)
      .select("tweets.content")
      .where("users.id = ?", user_id)
      .distinct
  }
end
