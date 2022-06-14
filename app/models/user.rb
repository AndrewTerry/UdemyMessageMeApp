class User < ApplicationRecord
  
  has_many :messages
  validates :username, length: { minimum: 3, maximum: 25 },
            uniqueness: { case_sensitive: false }, presence: true
  has_secure_password
  
end
