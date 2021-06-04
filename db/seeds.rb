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
    password: 123456)
  end

  p "User created!"
  p 'Creating Project'

  # 27.times do


  users = User.all
  project_0 = Project.create!( #1
    name: Faker::App.name,
    description: "It's a great App to implement everything easily on your page",
    github_url: "https://github.com/fantasticapp",
    user_id: users[0].id,
    project_tag: Project::PROJECT_TAGS.sample
  )

  project_1 = Project.create!( #2
    name: "Tester",
    description: "Tester is the world’s leading community for people to share, test and grow their products",
    github_url: "https://github.com/speakinginlungs/tester",
    user_id: users[1].id,
    project_tag: Project::PROJECT_TAGS.sample
  )

  project_2 = Project.create!( #3
    name: "Soul Blogs",
    description: "Drop every Blogpost easily into a social media profile feed and share it to public newspaper and users",
    github_url: "https://github.com/soul-blogs",
    user_id: users[2].id,
    project_tag: Project::PROJECT_TAGS.sample
  )

  project_3 = Project.create!( #4
    name: "Level Up Your Life",
    description: "Level up your own Life with daily challenges to complete Life levels with a real life engine, to make yourself better",
    github_url: "https://github.com/levelupyourlife",
    user_id: users[3].id,
    project_tag: Project::PROJECT_TAGS.sample
  )

  project_4 = Project.create!( #5
    name: "Shareforsports",
    description: "Borrow, rent or share everything you need for your sports activies",
    github_url: "https://github.com/foodhacks",
    user_id: users[4].id,
    project_tag: Project::PROJECT_TAGS.sample
  )

  project_5 = Project.create!( #6
    name: "PlantFam",
    description: "Find competent plantcare while you're away, make plant friends in your neighboorhood and have a social media plant feed for beautiful plants photos!",
    github_url: "https://github.com/plantFam",
    user_id: users[5].id,
    project_tag: Project::PROJECT_TAGS.sample
  )

  project_6 = Project.create!( #7
    name: "Anosmiatherapy",
    description: "A simple way to train back your sense of smell",
    github_url: "https://github.com/anosmiatherapy",
    user_id: users[6].id,
    project_tag: Project::PROJECT_TAGS.sample
  )

  project_7 = Project.create!( #8
    name: "FEEDBACKER",
    description: "Post your art. Get opinions.",
    github_url: "https://github.com/feedbacker",
    user_id: users[7].id,
    project_tag: Project::PROJECT_TAGS.sample
  )

  project_8 = Project.create!( #9
    name: "my2022",
    description: "Reach your goals. Step by Step. Even if your life is busy",
    github_url: "https://github.com/my2022",
    user_id: users[8].id,
    project_tag: Project::PROJECT_TAGS.sample
  )

  project_9 = Project.create!( #10
    name: "Bitwalk",
    description: "You mine bitcoin with your phone when you walk, and when you run, you mine twice",
    github_url: "https://github.com/bitwalk",
    user_id: users[9].id,
    project_tag: Project::PROJECT_TAGS.sample
  )

  project_10 = Project.create!( #11
    name: "Snowdenfiles",
    description: "A secret hidden messager App, which allow you that the Goverment can not track your location or messages, or calls anymore!",
    github_url: "https://github.com/snowdenfiles",
    user_id: users[10].id,
    project_tag: Project::PROJECT_TAGS.sample
  )

  project_11 = Project.create!( #12
    name: "EMP-PULS",
    description: "Click on a Button in the EMP-PULS App and send out a EMP shock to shutdown other near electronical devices.",
    github_url: "https://github.com/emp-puls",
    user_id: users[11].id,
    project_tag: Project::PROJECT_TAGS.sample
  )

  project_12 = Project.create!( #13
    name: "Business-prepwork",
    description: "Sometimes you don't even know how to start your own business. Here comes Business-Prepwork, it will help your everything to prepare your Business start with a step to step plan",
    github_url: "https://github.com/bprepwork",
    user_id: users[12].id,
    project_tag: Project::PROJECT_TAGS.sample
  )

  project_13 = Project.create!( #14
    name: "Yacht-ME",
    description: "A set sail Yachts, cabine share from local seehosts or destination seehosts",
    github_url: "https://github.com/yacht-me",
    user_id: users[13].id,
    project_tag: Project::PROJECT_TAGS.sample
  )

  project_14 = Project.create!( #15
    name: "Costume-Studio",
    description: "Have fun with costumes for festivals or if you are a famous person costume up too that nobody can recognize you.",
    github_url: "https://github.com/costume-studio",
    user_id: users[14].id,
    project_tag: Project::PROJECT_TAGS.sample
  )

  project_15 = Project.create!( #16
    name: "Air-BEE-&-BIKE",
    description: "How you come from A to B? Right!, You rent a BIKE with Air-BEE-AND-BIKE, easy and smoothly on every city or island -trip.",
    github_url: "https://github.com/airbeeandbike",
    user_id: users[15].id,
    project_tag: Project::PROJECT_TAGS.sample
  )

  project_16 = Project.create!( #17
    name: "Smart-Coding-Flashcards",
    description: "learn every flashcard from your CODING -BOOTCAMP wisely and smoothly",
    github_url: "https://github.com/smartcodingflashcards",
    user_id: users[16].id,
    project_tag: Project::PROJECT_TAGS.sample
  )

  project_17 = Project.create!( #18
    name: "Orchest-ream",
    description: "Stream your favorite classical musical Orchester from every portable devices",
    github_url: "https://github.com/orchest-ream",
    user_id: users[17].id,
    project_tag: Project::PROJECT_TAGS.sample
  )

  project_18 = Project.create!( #19
    name: "Public-private-JET",
    description: "Rent easily a PRIVATE LUXURY JET for less Money than you think. You just need a group of 8 people and share the high-Price-Rate through 8",
    github_url: "https://github.com/my2022",
    user_id: users[18].id,
    project_tag: Project::PROJECT_TAGS.sample
  )

  project_19 = Project.create!( #20
    name: "portable-Tourguider",
    description: "Is a Tourguide App through your Phone. Where ever you are and don't know what that is,: Tourguider will spell it out for you and give you a real historical lesson.",
    github_url: "https://github.com/portanle-tourguider",
    user_id: users[19].id,
    project_tag: Project::PROJECT_TAGS.sample
  )

  project_20 = Project.create!( #21
    name: "NoonGIL",
    description: "Is a korean app from the Kdrama Start-up, it's a 3d object detection App for visually impaired people. NoonGIL can be their eyes to face every daily challenges.",
    github_url: "https://github.com/noongil",
    user_id: users[20].id,
    project_tag: Project::PROJECT_TAGS.sample
  )

  project_21 = Project.create!( #22
    name: "Santi's musician beats",
    description: "Record every music track in tone-studio filter style, doesn't matter if you hit your trumps, play guitar, or sing a song before coding lessons",
    github_url: "https://github.com/musicianbeats",
    user_id: users[21].id,
    project_tag: Project::PROJECT_TAGS.sample
  )

  project_22 = Project.create!( #23
    name: "Easy-Money",
    description: "An App which gives you the right correct answer of every question!",
    github_url: "https://github.com/easymoney",
    user_id: users[22].id,
    project_tag: Project::PROJECT_TAGS.sample
  )

  project_23 = Project.create!( #24
    name: "Preply",
    description: "Learn every language online by local mothertongues",
    github_url: "https://github.com/preply",
    user_id: users[23].id,
    project_tag: Project::PROJECT_TAGS.sample
  )

  project_24 = Project.create!( #25
    name: "Masteryourownway",
    description: "Breakthrough your limited beliefs, with the most trackable Training for Martial-Artists: ARE YOU READY?, TO FIGHT FOR YOUR DREAMS?!",
    github_url: "https://github.com/masteryouronwway",
    user_id: users[24].id,
    project_tag: Project::PROJECT_TAGS.sample
  )

  project_25 = Project.create!( #26
    name: "Soto's - Been.there",
    description: "Share your travel experience on sightseeing, food, people, hotel, flight and more connected in one app.",
    github_url: "https://github.com/been.there",
    user_id: users[25].id,
    project_tag: Project::PROJECT_TAGS.sample
  )

  project_26 = Project.create!( #27
    name: Faker::App.name,
    description: "Making trading easy to understand and make a lot of money",
    github_url: "https://github.com/tradsmoothly",
    user_id: users[26].id,
    project_tag: Project::PROJECT_TAGS.sample
  )


p "Projects created!"



p 'Creating Tests...'

27.times do |i|
projects = Project.all
name = Faker::Computer.stack
description = Faker::Job.title
test_url = Faker::Internet.domain_name
sample_size = Faker::Number.number(digits: 2)

  Test.create!(
  name: name,
  description: description,
  test_url: test_url,
  sample_size: sample_size,
  time_limit: Date.current.tomorrow,
  project_id: projects[i].id
)
end
p 'tests created!'
p 'Creating reviews'

27.times do |i|
users = User.all
tests = Test.all.sample
rating = Faker::Number.decimal(l_digits: 2)

review_content = %w[Needs\ more\ color Could\ do\ with\ better\ functionality Great!\ I\ loved\ it! Would\ recommend\ to\ my\ friends! I\ don't\ really\ like\ the\ shapes\ of\ the\ buttons I'm\ in\ awe\ of\ the\ design!].sample
questions = Review::QUESTION_1_CATEGORIES.sample
  Review.create!(
  rating: rating,
  content: review_content,
  user_id: users.sample.id,
  question1: questions,
  test_id: tests.id
)

p "created review"
end

p 'reviews created!'
