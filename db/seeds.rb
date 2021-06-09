require 'faker'
require "open-uri"
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

  # 27.times do |i|

  # email = Faker::Internet.email
  # first_name = Faker::Name.first_name
  # last_name = Faker::Name.last_name
  # username = Faker::Internet.username

  # user_i = User.create!(
  #   email: email,
  #   first_name: first_name,
  #   last_name: last_name,
  #   username: username,
  #   password: 123456)
  # end

  
  

  # 27.times do
  file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623229346/michael-dam-mEZ3PoFGs_k-unsplash_tlsc87.jpg') 
  user_zero = User.create!(
    email: 'sarah@smith.com',
    first_name: 'sarah',
    last_name: 'smith',
    username: 'sasi',
    password: 123456)
    user_zero.photo.attach(io: file, filename: 'sarah.jpg', content_type: 'image/jpg')

    file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623229346/christopher-campbell-rDEOVtE7vOs-unsplash_h6sn7u.jpg') 
    user_one = User.create!(
      email: 'lisa@mueller.com',
      first_name: 'lisa',
      last_name: 'Müller',
      username: 'Lisam',
      password: 123456)
      user_one.photo.attach(io: file, filename: 'lisa.jpg', content_type: 'image/jpg')

      file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623226896/28wpskeu05xl5tv038ab4u9df9k7.jpg') 
      user_2 = User.create!(
        email: 'Rosie@parker.com',
        first_name: 'Rosie',
        last_name: 'Parker',
        username: 'Roparker',
        password: 123456)
        user_2.photo.attach(io: file, filename: 'rosie.jpg', content_type: 'image/jpg')

        file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623229346/ben-parker-OhKElOkQ3RE-unsplash_goztsy.jpg') 
      user_3 = User.create!(
        email: 'Ben@parker.com',
        first_name: 'Ben',
        last_name: 'Parker',
        username: 'Benparker',
        password: 123456)
        user_3.photo.attach(io: file, filename: 'ben.jpg', content_type: 'image/jpg')

        file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623229346/fred-moon-vSI2KnI4Abc-unsplash_qqhd2p.jpg') 
      user_4 = User.create!(
        email: 'Fred@moon.com',
        first_name: 'Fred',
        last_name: 'Moon',
        username: 'Moored',
        password: 123456)
        user_4.photo.attach(io: file, filename: 'fred.jpg', content_type: 'image/jpg')

        file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623229346/bruce-mars-AndE50aaHn4-unsplash_aoprqy.jpg') 
        user_5 = User.create!(
          email: 'hayden@brown.com',
          first_name: 'Hayden',
          last_name: 'Brown',
          username: 'Haybrown',
          password: 123456)
          user_5.photo.attach(io: file, filename: 'brown.jpg', content_type: 'image/jpg')

          file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623229348/tanjir-ahmed-chowdhury-Qy4wpL2B4ac-unsplash_ouvqzp.jpg') 
        user_6 = User.create!(
          email: 'Ahmed@Tanjir.com',
          first_name: 'Ahmed',
          last_name: 'Tanjir',
          username: 'tanji',
          password: 123456)
          user_6.photo.attach(io: file, filename: 'ahmed.jpg', content_type: 'image/jpg')


          file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623229346/matheus-ferrero-W7b3eDUb_2I-unsplash_eniojf.jpg') 
        user_7 = User.create!(
          email: 'Belinda@fleming.com',
          first_name: 'Belinda',
          last_name: 'Fleming',
          username: 'flem',
          password: 123456)
          user_7.photo.attach(io: file, filename: 'flem.jpg', content_type: 'image/jpg')

          file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623229347/raul-angel-x8Ac6jee_3s-unsplash_edfx0v.jpg') 
        user_8 = User.create!(
          email: 'Jessica@Eaton.com',
          first_name: 'Jessica',
          last_name: 'Eaton',
          username: 'jess',
          password: 123456)
          user_8.photo.attach(io: file, filename: 'eaton.jpg', content_type: 'image/jpg')

          file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623229349/barbora-polednova-bj7Ox4W1yBY-unsplash_culgu4.jpg') 
        user_9 = User.create!(
          email: 'Barbara@penelope',
          first_name: 'Barbara',
          last_name: 'Penelope',
          username: 'baralope',
          password: 123456)
          user_9.photo.attach(io: file, filename: 'barbara.jpg', content_type: 'image/jpg')

          file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623229349/ben-den-engelsen-YUu9UAcOKZ4-unsplash_xrljdp.jpg') 
        user_10 = User.create!(
          email: 'ben@engelsen.com',
          first_name: 'Ben',
          last_name: 'Engelsen',
          username: 'bengel',
          password: 123456)
          user_10.photo.attach(io: file, filename: 'ben.jpg', content_type: 'image/jpg')

          file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623229349/ana-itonishvili-7WYM9m8-7kE-unsplash_fncczh.jpg') 
        user_11 = User.create!(
          email: 'anna@brown.com',
          first_name: 'Anna',
          last_name: 'Brown',
          username: 'ann',
          password: 123456)
          user_11.photo.attach(io: file, filename: 'ann.jpg', content_type: 'image/jpg')

          file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623229349/ayo-ogunseinde-6W4F62sN_yI-unsplash_wjg1a1.jpg') 
        user_12 = User.create!(
          email: 'elisa@beth.com',
          first_name: 'Elisa',
          last_name: 'Beth',
          username: 'elisa',
          password: 123456)
          user_12.photo.attach(io: file, filename: 'elisa.jpg', content_type: 'image/jpg')

          file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623229348/sarah-brown-tTdC88_6a_I-unsplash_hdpq7y.jpg') 
        user_13 = User.create!(
          email: 'Savanna@shields.com',
          first_name: 'Savanna',
          last_name: 'shields',
          username: 'shield',
          password: 123456)
          user_13.photo.attach(io: file, filename: 'savanna.jpg', content_type: 'image/jpg')

          file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623229348/taylor-hernandez-STiVSlutjt8-unsplash_g75j1r.jpg') 
        user_14 = User.create!(
          email: 'taylor@laine.com',
          first_name: 'taylor',
          last_name: 'laine',
          username: 'laini',
          password: 123456)
          user_14.photo.attach(io: file, filename: 'taylor.jpg', content_type: 'image/jpg')

          file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623229348/taylor-hernandez-DLKR_x3T_7s-unsplash_xkvep2.jpg') 
        user_15 = User.create!(
          email: 'annika@schmidt.com',
          first_name: 'Annika',
          last_name: 'Schmidt',
          username: 'an',
          password: 123456)
          user_15.photo.attach(io: file, filename: 'an.jpg', content_type: 'image/jpg')

          file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623229348/aiony-haust-3TLl_97HNJo-unsplash_ky55fu.jpg') 
        user_16 = User.create!(
          email: 'seo@dalmi.com',
          first_name: 'seo',
          last_name: 'dalmi',
          username: 'dalmia',
          password: 123456)
          user_16.photo.attach(io: file, filename: 'seo.jpg', content_type: 'image/jpg')

          file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623229348/tamara-bellis-A3Gd2b-98_g-unsplash_jcwjoh.jpg') 
        user_17 = User.create!(
          email: 'tamara@bellis.com',
          first_name: 'tamara',
          last_name: 'Bellis',
          username: 'tam',
          password: 123456)
          user_17.photo.attach(io: file, filename: 'tam.jpg', content_type: 'image/jpg')

          file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623229347/midas-hofstra-a6PMA5JEmWE-unsplash_ecczhm.jpg') 
        user_18 = User.create!(
          email: 'Johann@jones.com',
          first_name: 'johann',
          last_name: 'jones',
          username: 'jjones',
          password: 123456)
          user_18.photo.attach(io: file, filename: 'jones.jpg', content_type: 'image/jpg')

          file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623229347/rafaella-mendes-diniz-et_78QkMMQs-unsplash_hzqwqo.jpg') 
        user_19 = User.create!(
          email: 'rafaela@mendes.com',
          first_name: 'rafaela',
          last_name: 'mendes',
          username: 'ela',
          password: 123456)
          user_19.photo.attach(io: file, filename: 'ela.jpg', content_type: 'image/jpg')

          file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623229348/wes-hicks-4-EeTnaC1S4-unsplash_z2c7ni.jpg') 
        user_20 = User.create!(
          email: 'Nam@san.com',
          first_name: 'Namdo',
          last_name: 'San',
          username: 'Haybrown',
          password: 123456)
          user_20.photo.attach(io: file, filename: 'sansan.jpg', content_type: 'image/jpg')

          file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623229346/jose-alejandro-cuffia-k1LNP6dnyAE-unsplash_f9sh4o.jpg') 
        user_21 = User.create!(
          email: 'jo@brown.com',
          first_name: 'Jo',
          last_name: 'Brown',
          username: 'Jobrown',
          password: 123456)
          user_21.photo.attach(io: file, filename: 'jobrown.jpg', content_type: 'image/jpg')

          file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623229346/cobro-JDJIDtZNJsM-unsplash_knhdnk.jpg') 
        user_22 = User.create!(
          email: 'jordan@cane.com',
          first_name: 'jordan',
          last_name: 'cane',
          username: 'canebrown',
          password: 123456)
          user_22.photo.attach(io: file, filename: 'jordan.jpg', content_type: 'image/jpg')

          file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623229346/jonas-kakaroto-KIPqvvTOC1s-unsplash_ovaxkz.jpg') 
        user_23 = User.create!(
          email: 'jonas@east.com',
          first_name: 'jonas',
          last_name: 'east',
          username: 'eastjonas',
          password: 123456)
          user_23.photo.attach(io: file, filename: 'jonas.jpg', content_type: 'image/jpg')

          

        file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623229564/80984292_mmassb.jpg') 
        user_24 = User.create!(
        email: 'jan@dreamfighterjourney.com',
        first_name: 'jan',
        last_name: 'peter',
        username: 'masteryourownway',
        password: 123456)
        user_24.photo.attach(io: file, filename: 'jan.jpg', content_type: 'image/jpg')

        file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623229349/angelo-pantazis-_bmROQSJJG0-unsplash_zqs5qj.jpg') 
        user_25 = User.create!(
          email: 'soto@soto.com',
          first_name: 'soto',
          last_name: 'dim',
          username: 'saoma',
          password: 1111111)
          user_25.photo.attach(io: file, filename: 'soto.jpg', content_type: 'image/jpg')

          file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623229347/mustafa-chahwala-jvSTl5SCPUs-unsplash_bwea6z.jpg') 
        user_26 = User.create!(
          email: 'dom@nik.com',
          first_name: 'dom',
          last_name: 'nik',
          username: 'dom',
          password: 123456)
          user_26.photo.attach(io: file, filename: 'dom.jpg', content_type: 'image/jpg')

          file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623229347/scorpio-creative-ZGlGMTlOc1E-unsplash_t9tc5t.jpg') 
        user_27 = User.create!(
          email: 'tim@raue.com',
          first_name: 'tim',
          last_name: 'raue',
          username: 'rautim',
          password: 123456)
          user_27.photo.attach(io: file, filename: 'rautim.jpg', content_type: 'image/jpg')

          file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623229348/shipman-northcutt-sgZX15Da8YE-unsplash_jcvnwq.jpg') 
        user_28 = User.create!(
          email: 'Kurt@raue.com',
          first_name: 'kurt',
          last_name: 'raue',
          username: 'kurtim',
          password: 123456)
          user_28.photo.attach(io: file, filename: 'kurt.jpg', content_type: 'image/jpg')

    p "User created!"

    p 'Creating Project'

  project_zero_0 = Project.create!( #1
    name: Faker::App.name,
    description: "It's a great App to implement everything easily on your page",
    github_url: "https://github.com/fantasticapp",
    user_id: user_zero.id,
    project_tag: Project::PROJECT_TAGS.sample
  )

  users = User.all
  project_0 = Project.create!( #1
    name: "Valeriedations",
    description: "handle all your validations by just one implementation ",
    github_url: "https://github.com/valeriedations",
    user_id: users[0].id,
    project_tag: Project::PROJECT_TAGS.sample
  )

  project_1 = Project.create!( #2
    name: "My Mood",
    description: "My Mood is the premier place for finding your fashion identity.",
    github_url: "https://github.com/speakinginlungs/rails-clothes",
    user_id: users[1].id,
    project_tag: Project::PROJECT_TAGS.sample
  )

  project_2 = Project.create!( #3
    name: "Soul Blogs",
    description: "Drop every Blogpost easily into a social media profile feed and share it to public newspaper and users.",
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
    description: "Get back your sense of smell",
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
    description: "Sometimes you don't even know how to start your own business. Here comes Business-Prepwork, it will help you with everything you'll need to start your business!",
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
    name: "like-wisely",
    description: "Avoid real Life mistakes which leads to pain decisions. Share your real and honest Life experience instead, so that everybody can learn from it!",
    github_url: "https://github.com/likewisely",
    user_id: users[26].id,
    project_tag: Project::PROJECT_TAGS.sample
  )


p "Projects created!"



p 'Creating Tests...'

27.times do |i|
projects = Project.all
name = Faker::Computer.stack
description = Faker::Company.bs
test_url = Faker::Internet.domain_name
sample_size = Faker::Number.number(digits: 2)
date = rand(Date.today..Date.today + 30)

  Test.create!(
  name: name,
  description: description,
  test_url: test_url,
  sample_size: sample_size,
  time_limit: date,
  project_id: projects[i].id
)
end
p 'tests created!'
p 'Creating reviews'


TestUser.create!(
  test_id: Test.last.id,
  user_id: user_zero.id
  )


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
p "you have #{Project.count} projects"