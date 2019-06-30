class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :task
      t.string :title
      t.text :notes
      t.date :completed
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :projects, [:user_id, :created_at]
  end
end
