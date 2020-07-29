class User < ActiveRecord::Base
    has_secure_password #<--BCRYPT MACRO    
    has_many :apartments
end
