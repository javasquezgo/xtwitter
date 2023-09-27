class Hashtag < ApplicationRecord
    #Associations
    has_and_belongs_to_many :tweets
    
    #Validations
    validates :name, presence: true
end