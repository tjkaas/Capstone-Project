class Project < ApplicationRecord
    has_many :todo_items
    has_many :user_projects, foreign_key: 'project_id'
    has_many :users, through: :user_projects
    default_scope -> { order(created_at: :desc) }
    validates :user_id, presence: true
    validates :content, presence: true, length: { maximum: 80 }
end
