class TodoItem < ApplicationRecord
  belongs_to :project
  default_scope -> { order(created_at: :desc) }
  validates :content, presence: true, length: { maximum: 140 }
  
def completed?
   !completed_at.blank?
end

def build
    
end

end