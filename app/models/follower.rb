class Follower < ApplicationRecord
  #Associations
  belongs_to :user

  #Validations
  validates :followers, uniqueness: { scope: [:following, :user_id]}
  validates :followers, uniqueness: { scope: [:followers, :user_id] }
  #validates :followers, uniqueness: { scope: [:following, :user_id], message: "You've already follow this user" }
end
