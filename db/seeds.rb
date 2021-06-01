# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p 'Destroying records'

User.delete_all
Project.delete_all

p 'Creating user'
user = User.create!(email: 'user@user.io', password: 123456)

p 'Creating Project'

Project.create!(
  name: "Tester",
  description: "Tester is the world’s leading community for people to share, test and grow their products",
  github_url: "https://github.com/speakinginlungs/tester",
  user_id: user.id,
)

p "#{User.count} user created, #{Project.count} project created"