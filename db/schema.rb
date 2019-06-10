# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20190607162410) do

  create_table "projects", force: :cascade do |t|
    t.string "task"
    t.string "title"
    t.text "notes"
    t.date "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "todo_lists", force: :cascade do |t|
    t.string "title"
    t.text "description"
=======
ActiveRecord::Schema.define(version: 20190607164259) do

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
>>>>>>> c7cf7aa50263f55dbb3f12df84d99561ba7fd363
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
