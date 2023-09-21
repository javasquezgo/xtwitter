class Like < ApplicationRecord
  belongs_to :user, foreign_key: 'id_user'
  belongs_to :tweet, foreign_key: 'id_tweet'
end
