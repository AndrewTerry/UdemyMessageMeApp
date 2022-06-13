class User < ApplicationRecord
  
  validates :username, length: { minimum: 3, maximum: 25 }, uniqueness: true,
            presence: true
  has_secure_password
  
end
