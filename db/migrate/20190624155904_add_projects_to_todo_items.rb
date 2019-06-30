class AddProjectsToTodoItems < ActiveRecord::Migration[5.1]
  def change
    add_column :todo_items, :projects, :integer
  end
end
