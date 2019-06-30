# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create!(name:  "Michael Vasquez")
u2 = User.create!(name:  "John Loureiro")

p1 = u1.projects.create!(name: "Capstone Project")
p1.todo_items.create!()


p2 = u2.projects.create!(name: "Super Saiyan Goku Project")
p2.todo_items.create!()
