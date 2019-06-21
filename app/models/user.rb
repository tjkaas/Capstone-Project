class User < ApplicationRecord
    has_many :projects
    has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
    
end
