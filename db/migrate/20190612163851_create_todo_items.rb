class TodoList < ApplicationRecord::Migration[5.1]
 has_many :todo_items
end
  def change
    create_table :todo_items do |t|
      t.string :content
      t.string :todo_list
      t.string :references

      t.timestamps
    end
  end
