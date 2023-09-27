class Bookmark < ApplicationRecord
  #Associations
  belongs_to :user
  belongs_to :tweet

  #Validations
  validates :user_id, uniqueness: { scope: :tweet_id}

  #Queries
  scope :count_of_bookmarks, ->(user) {
    where('user_id = ?', user).count
  }
end
