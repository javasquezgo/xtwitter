class Retweet < ApplicationRecord
  belongs_to :user
  belongs_to :tweet

  validates :reply_text, length: {maximum:255}
end
