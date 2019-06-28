class TodoItems < ActiveRecord::Migration[5.1]

  def change
    create_table :todo_items do |t|
      t.string :content
      t.string :todo_list
      t.string :references
      t.string :todo_list_id

      t.timestamps
    end
  end
end