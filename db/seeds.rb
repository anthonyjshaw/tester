require 'faker'
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

# "user_#{i}@user.io",

p 'Creating user'

27.times do |i|

email = Faker::Internet.email
first_name = Faker::Name.first_name
last_name = Faker::Name.last_name
username = Faker::Internet.username 

user_i = User.create!(
  email: email,
  first_name: first_name,
  last_name: last_name, 
  username: username,
  user_id: user_i.id,
  password: 123456)
end


p 'Creating Project'

# 27.times do

project_i = Project.create!( #1
  name: Faker::App.name,
  description: "It's a great App to implement everything easily on your page",
  github_url: "https://github.com/fantasticapp",
  user_id: user_i.id,
  project_tag: Project::PROJECT_TAGS.sample
)

project_i = Project.create!( #2
  name: "Tester",
  description: "Tester is the world’s leading community for people to share, test and grow their products",
  github_url: "https://github.com/speakinginlungs/tester",
  user_id: user_i.id,
  project_tag: Project::PROJECT_TAGS.sample
)

project_i = Project.create!( #3
  name: "Soul Blogs",
  description: "Drop every Blogpost easily into a social media profile feed and share it to public newspaper and users",
  github_url: "https://github.com/soul-blogs",
  user_id: user_i.id,
  project_tag: Project::PROJECT_TAGS.sample
)

project_i = Project.create!( #4
  name: "Level Up Your Life",
  description: "Level up your own Life with daily challenges to complete Life levels with a real life engine, to make yourself better",
  github_url: "https://github.com/levelupyourlife",
  user_id: user_i.id,
  project_tag: Project::PROJECT_TAGS.sample
)

project_i = Project.create!( #5
  name: "Shareforsports",
  description: "Borrow, rent or share everything you need for your sports activies",
  github_url: "https://github.com/foodhacks",
  user_id: user_i.id,
  project_tag: Project::PROJECT_TAGS.sample
)

project_i = Project.create!( #6
  name: "PlantFam",
  description: "Find competent plantcare while you're away, make plant friends in your neighboorhood and have a social media plant feed for beautiful plants photos!",
  github_url: "https://github.com/plantFam",
  user_id: user_i.id,
  project_tag: Project::PROJECT_TAGS.sample
)

project_i = Project.create!( #7
  name: "Anosmiatherapy",
  description: "A simple way to train back your sense of smell",
  github_url: "https://github.com/anosmiatherapy",
  user_id: user_i.id,
  project_tag: Project::PROJECT_TAGS.sample
)

project_i = Project.create!( #8
  name: "FEEDBACKER",
  description: "Post your art. Get opinions.",
  github_url: "https://github.com/feedbacker",
  user_id: user_i.id,
  project_tag: Project::PROJECT_TAGS.sample
)

project_i = Project.create!( #9
  name: "my2022",
  description: "Reach your goals. Step by Step. Even if your life is busy",
  github_url: "https://github.com/my2022",
  user_id: user_i.id,
  project_tag: Project::PROJECT_TAGS.sample
)

project_i = Project.create!( #10
  name: "Bitwalk",
  description: "You mine bitcoin with your phone when you walk, and when you run, you mine twice",
  github_url: "https://github.com/bitwalk",
  user_id: user_i.id,
  project_tag: Project::PROJECT_TAGS.sample
)

project_i = Project.create!( #11
  name: "Snowdenfiles",
  description: "A secret hidden messager App, which allow you that the Goverment can not track your location or messages, or calls anymore!",
  github_url: "https://github.com/snowdenfiles",
  user_id: user_i.id,
  project_tag: Project::PROJECT_TAGS.sample
)

project_i = Project.create!( #12
  name: "EMP-PULS",
  description: "Click on a Button in the EMP-PULS App and send out a EMP shock to shutdown other near electronical devices.",
  github_url: "https://github.com/emp-puls",
  user_id: user_i.id,
  project_tag: Project::PROJECT_TAGS.sample
)

project_i = Project.create!( #13
  name: "Business-prepwork",
  description: "Sometimes you don't even know how to start your own business. Here comes Business-Prepwork, it will help your everything to prepare your Business start with a step to step plan",
  github_url: "https://github.com/bprepwork",
  user_id: user_i.id,
  project_tag: Project::PROJECT_TAGS.sample
)

project_i = Project.create!( #14
  name: "Yacht-ME",
  description: "A set sail Yachts, cabine share from local seehosts or destination seehosts",
  github_url: "https://github.com/yacht-me",
  user_id: user_i.id,
  project_tag: Project::PROJECT_TAGS.sample
)

project_i = Project.create!( #15
  name: "Costume-Studio",
  description: "Have fun with costumes for festivals or if you are a famous person costume up too that nobody can recognize you.",
  github_url: "https://github.com/costume-studio",
  user_id: user_i.id,
  project_tag: Project::PROJECT_TAGS.sample
)

project_i = Project.create!( #16
  name: "Air-BEE-&-BIKE",
  description: "How you come from A to B? Right!, You rent a BIKE with Air-BEE-AND-BIKE, easy and smoothly on every city or island -trip.",
  github_url: "https://github.com/airbeeandbike",
  user_id: user_i.id,
  project_tag: Project::PROJECT_TAGS.sample
)

project_i = Project.create!( #17
  name: "Smart-Coding-Flashcards",
  description: "learn every flashcard from your CODING -BOOTCAMP wisely and smoothly",
  github_url: "https://github.com/smartcodingflashcards",
  user_id: user_i.id,
  project_tag: Project::PROJECT_TAGS.sample
)

project_i = Project.create!( #18
  name: "Orchest-ream",
  description: "Stream your favorite classical musical Orchester from every portable devices",
  github_url: "https://github.com/orchest-ream",
  user_id: user_i.id,
  project_tag: Project::PROJECT_TAGS.sample
)

project_i = Project.create!( #19
  name: "Public-private-JET",
  description: "Rent easily a PRIVATE LUXURY JET for less Money than you think. You just need a group of 8 people and share the high-Price-Rate through 8",
  github_url: "https://github.com/my2022",
  user_id: user_i.id,
  project_tag: Project::PROJECT_TAGS.sample
)

project_i = Project.create!( #20
  name: "portable-Tourguider",
  description: "Is a Tourguide App through your Phone. Where ever you are and don't know what that is,: Tourguider will spell it out for you and give you a real historical lesson.",
  github_url: "https://github.com/portanle-tourguider",
  user_id: user_i.id,
  project_tag: Project::PROJECT_TAGS.sample
)

project_i = Project.create!( #21
  name: "NoonGIL",
  description: "Is a korean app from the Kdrama Start-up, it's a 3d object detection App for visually impaired people. NoonGIL can be their eyes to face every daily challenges.",
  github_url: "https://github.com/noongil",
  user_id: user_i.id,
  project_tag: Project::PROJECT_TAGS.sample
)

project_i = Project.create!( #22
  name: "Santi's musician beats",
  description: "Record every music track in tone-studio filter style, doesn't matter if you hit your trumps, play guitar, or sing a song before coding lessons",
  github_url: "https://github.com/musicianbeats",
  user_id: user_i.id,
  project_tag: Project::PROJECT_TAGS.sample
)

project_i = Project.create!( #23
  name: "Easy-Money",
  description: "An App which gives you the right correct answer of every question!",
  github_url: "https://github.com/easymoney",
  user_id: user_i.id,
  project_tag: Project::PROJECT_TAGS.sample
)

project_i = Project.create!( #24
  name: "Preply",
  description: "Learn every language online by local mothertongues",
  github_url: "https://github.com/preply",
  user_id: user_i.id,
  project_tag: Project::PROJECT_TAGS.sample
)

project_i = Project.create!( #25
  name: "Masteryourownway",
  description: "Breakthrough your limited beliefs, with the most trackable Training for Martial-Artists: ARE YOU READY?, TO FIGHT FOR YOUR DREAMS?!",
  github_url: "https://github.com/masteryouronwway",
  user_id: user_i.id,
  project_tag: Project::PROJECT_TAGS.sample
)

project_i = Project.create!( #26
  name: "Soto's - Been.there",
  description: "Share your travel experience on sightseeing, food, people, hotel, flight and more connected in one app.",
  github_url: "https://github.com/been.there",
  user_id: user_i.id,
  project_tag: Project::PROJECT_TAGS.sample
)

project_i = Project.create!( #27
  name: Faker::App.name,
  description: "Making trading easy to understand and make a lot of money",
  github_url: "https://github.com/tradsmoothly",
  user_id: user_i.id,
  project_tag: Project::PROJECT_TAGS.sample
)

p 'Creating Tests...'

27.times do |i|

name = Faker::Computer.stack
description = Faker::Job.title
test_url = Faker::Internet.domain_name
sample_size = Faker::Number.number(digits: 2)

@test_i = Test.create!(
  name: name,
  description: description,
  test_url: test_url,
  sample_size: sample_size,
  time_limit: Date.current.tomorrow,
  project_id: project_i.id
)
end

p 'Creating reviews'

27.times do |i|

rating = Faker::Number.decimal(l_digits: 2)

review_content = %w[Needs\ more\ color Could\ do\ with\ better\ functionality Great!\ I\ loved\ it! Would\ recommend\ to\ my\ friends! I\ don't\ really\ like\ the\ shapes\ of\ the\ buttons I'm\ in\ awe\ of\ the\ design!].sample

@reviews_i = Reviews.create!(
  rating: rating,
  content: review_content,
  user_id: user_i.id,
  test_id: test_i.id,
  project_id: project_i.id
)


p 'test created!'

end
