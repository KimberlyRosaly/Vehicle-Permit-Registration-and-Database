class Permit < ActiveRecord::Base
    validates :number, uniqueness: true
    
    belongs_to :apartment
    belongs_to :user
end
