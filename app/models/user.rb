class User < ApplicationRecord
   has_many :user_projects, foreign_key: "user_id"
   has_many :projects, through: :user_projects
   has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
    
end
