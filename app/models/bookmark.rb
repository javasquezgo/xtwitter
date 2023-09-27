class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :tweet

  scope :count_of_bookmarks, ->(user) {
    where('user_id = ?', user).count
  }
end
