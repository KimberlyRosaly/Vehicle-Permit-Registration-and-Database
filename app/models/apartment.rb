class Apartment < ActiveRecord::Base
    has_many :permits
    belongs_to :user
end
