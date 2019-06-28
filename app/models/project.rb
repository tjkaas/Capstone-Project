class Project < ApplicationRecord
    belongs_to :user
    default_scope -> { order(created_at: :desc) }
    validates :content, presence: true, length: { maximum: 80 }
end
