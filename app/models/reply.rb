class Reply < ApplicationRecord
  #Associations
  belongs_to :user
  belongs_to :tweet

  #Validations
  validates :reply_text, presence: true, length: {minimum:1, maximum:255}

  #Queries
  scope :user_personal_tweets, ->(user){
    select(:reply_text).joins(:user, :tweet).where('user_id = ?', user)
   }
  
end
