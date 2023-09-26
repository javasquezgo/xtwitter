class Follower < ApplicationRecord
  belongs_to :user

  validates :followers, uniqueness: { scope: [:following, :user_id], message: "You've already follow this user" }


  #Following Count: Create a new scope that retrieves the number of users a user follows
  scope :following_user, -> { 
    joins(:followers)
      .where(followers: { following: 1 })
      .select(:full_name, :id)
      .distinct
  }

  #Followers Count: Create a new scope that retrieves the number of followers a user has

  scope :followers_user, ->(user_id) { 
    where(following: user_id)
      .joins(:user)
      .select('users.full_name, users.id')
      .distinct
  }
end
