class Follower < ApplicationRecord
  #Associations
  belongs_to :user

  #Validations
  validates :following, uniqueness: { scope: [:user_id], case_sensitive: false }
  #validates :followers, uniqueness: { scope: [:following, :user_id]}
  validates :followers, uniqueness: { scope: [:user_id] , case_sensitive: false}
  #validates :followers, uniqueness: { scope: [:following, :user_id], message: "You've already follow this user" }
end
