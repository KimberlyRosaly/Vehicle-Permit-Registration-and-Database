class User < ActiveRecord::Base
    has_secure_password #<--BCRYPT MACRO    
    validates :username, uniqueness: true #<--ensure no duplicate usernames able to be made #?micah "common practice"

    has_many :apartments
    has_many :permits
end
