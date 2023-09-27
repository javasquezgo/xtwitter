class Hashtag < ApplicationRecord
    has_and_belongs_to_many :tweets
    
    validates :name, presence: true
end