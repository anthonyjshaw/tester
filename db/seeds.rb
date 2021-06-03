# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p 'Destroying records'

User.destroy_all
Project.destroy_all
Test.destroy_all
Review.destroy_all



p 'Creating user'

10.times do |i|

user_i = User.create!(email: "user_#{i}@user.io", password: 123456)


p 'Creating Project'

5.times do

project_i = Project.create!(
  name: "Tester",
  description: "Tester is the world’s leading community for people to share, test and grow their products",
  github_url: "https://github.com/speakinginlungs/tester",
  user_id: user_i.id,
  project_tag: Project::PROJECT_TAGS.sample
)

p 'Creating Tests...'
10.times do
@test_i = Test.create!(
  name: "Tester project UX",
  description: "testing user pain-points",
  test_url: "http://example.com/acoustics/birthday.html#bedroom",
  sample_size: 235,
  time_limit: Date.current.tomorrow,
  project_id: project_i.id
)



end

end

p 'Creating reviews'


p 'test created!'

end
