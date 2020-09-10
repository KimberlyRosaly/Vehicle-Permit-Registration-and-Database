class Apartment < ActiveRecord::Base
    validates :number, uniqueness: true
    
    has_many :permits
    belongs_to :user
end
