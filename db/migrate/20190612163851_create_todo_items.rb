class TodoItems < ActiveRecord::Migration[5.1]

class CreateTodoItems < ActiveRecord::Migration[5.1]
  def change
    create_table :todo_items do |t|
      t.string :content
      t.string :todo_item
      t.string :references
      t.string :project_id

      t.timestamps
    end
  end
end
