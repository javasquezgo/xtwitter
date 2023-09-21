class Tweet < ApplicationRecord
  belongs_to :user, foreign_key: 'id_user'
  has_many :bookmarks, foreign_key: 'id_tweet'
  has_many :likes, foreign_key: 'id_tweet'

  validates :id_user, presence: true
  validates :content, length: { maximum:256}
end
