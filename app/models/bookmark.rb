class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :tweet

  validates :user_id, uniqueness: { scope: :tweet_id}

  scope :count_of_bookmarks, ->(user) {
    where('user_id = ?', user).count
  }
end
