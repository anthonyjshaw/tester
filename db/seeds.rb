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
    first_name: 'Sarah',
    last_name: 'Smith',
    username: 'sasi',
    password: 123456)
    user_zero.photo.attach(io: file, filename: 'sarah.jpg', content_type: 'image/jpg')

    file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623229346/christopher-campbell-rDEOVtE7vOs-unsplash_h6sn7u.jpg') 
    user_one = User.create!(
      email: 'lisa@mueller.com',
      first_name: 'Lisa',
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

users = User.all
file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623365419/divibuilder_mo1pmp.jpg')
  project_zero_0 = Project.create!( #1
    name: Faker::App.name,
    description: "It's a great App to implement everything easily on your page",
    github_url: "https://github.com/fantasticapp",
    user_id: user_zero.id,
    project_tag: Project::PROJECT_TAGS.sample)
project_zero_0.photo.attach(io: file, filename: 'divibuilder.jpg', content_type: 'image/jpg')



file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623365340/valeriedations_adqer8.png')
  project_0 = Project.create!( #1
    name: "Valeriedations",
    description: "handle all your validations by just one implementation ",
    github_url: "https://github.com/valeriedations",
    user_id: users[0].id,
    project_tag: Project::PROJECT_TAGS.sample)
  project_0.photo.attach(io: file, filename: 'valerie.jpg', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623365224/Moodclothing_v2wz18.jpg')
  project_1 = Project.create!( #2
    name: "My Mood",
    description: "My Mood is the premier place for finding your fashion identity.",
    github_url: "https://github.com/speakinginlungs/rails-clothes",
    user_id: users[1].id,
    project_tag: Project::PROJECT_TAGS.sample)
  project_1.photo.attach(io: file, filename: 'moodanthony.jpg', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623365131/soulblogs_jnh3cw.jpg')
  project_2 = Project.create!( #3
    name: "Soul Blogs",
    description: "Drop every Blogpost easily into a social media profile feed and share it to public newspaper and users.",
    github_url: "https://github.com/soul-blogs",
    user_id: users[2].id,
    project_tag: Project::PROJECT_TAGS.sample)
  project_2.photo.attach(io: file, filename: 'soul.jpg', content_type: 'image/jpg')
  

  file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623365006/levelupyourlife_br8fc1.jpg')
  project_3 = Project.create!( #4
    name: "Level Up Your Life",
    description: "Level up your own Life with daily challenges to complete Life levels with a real life engine, to make yourself better",
    github_url: "https://github.com/levelupyourlife",
    user_id: users[3].id,
    project_tag: Project::PROJECT_TAGS.sample)
  project_3.photo.attach(io: file, filename: 'levelupyourlife.jpg', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623364931/sportsswap_mtzvcy.jpg')
  project_4 = Project.create!( #5
    name: "Sportsswap",
    description: "Borrow, rent or share everything you need for your sports activies",
    github_url: "https://github.com/shareforsports",
    user_id: users[4].id,
    project_tag: Project::PROJECT_TAGS.sample)
  project_4.photo.attach(io: file, filename: 'sportsswap.jpg', content_type: 'image/jpg')


file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623364806/plantFam_gasqkd.jpg')
  project_5 = Project.create!( #6
    name: "PlantFam",
    description: "Find competent plantcare while you're away, make plant friends in your neighboorhood and have a social media plant feed for beautiful plants photos!",
    github_url: "https://github.com/plantFam",
    user_id: users[5].id,
    project_tag: Project::PROJECT_TAGS.sample)
project_5.photo.attach(io: file, filename: 'plantfam.jpg', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623364722/anosmia_db7yk0.jpg')
  project_6 = Project.create!( #7
    name: "Anosmiatherapy",
    description: "Get back your sense of smell",
    github_url: "https://github.com/anosmiatherapy",
    user_id: users[6].id,
    project_tag: Project::PROJECT_TAGS.sample)
project_6.photo.attach(io: file, filename: 'anosmia.jpg', content_type: 'image/jpg')


file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623364624/feedbacker_rwrkzi.jpg')
  project_7 = Project.create!( #8
    name: "FEEDBACKER",
    description: "Post your art. Get opinions.",
    github_url: "https://github.com/feedbacker",
    user_id: users[7].id,
    project_tag: Project::PROJECT_TAGS.sample)
project_7.photo.attach(io: file, filename: 'feedbacker.jpg', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623364533/my2022_uqhchu.jpg')
  project_8 = Project.create!( #9
    name: "my2022",
    description: "Reach your goals. Step by Step. Even if your life is busy",
    github_url: "https://github.com/my2022",
    user_id: users[8].id,
    project_tag: Project::PROJECT_TAGS.sample)
project_8.photo.attach(io: file, filename: 'my2022.jpg', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623364463/bitwalk_wvidbf.jpg')
  project_9 = Project.create!( #10
    name: "Bitwalk",
    description: "You mine bitcoin with your phone when you walk, and when you run, you mine twice",
    github_url: "https://github.com/bitwalk",
    user_id: users[9].id,
    project_tag: Project::PROJECT_TAGS.sample)
  project_9.photo.attach(io: file, filename: 'bitwalk.jpg', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623364376/snowdenfiles_avblux.jpg')
  project_10 = Project.create!( #11
    name: "Snowdenfiles",
    description: "A secret hidden messager App, which allow you that the Goverment can not track your location or messages, or calls anymore!",
    github_url: "https://github.com/snowdenfiles",
    user_id: users[10].id,
    project_tag: Project::PROJECT_TAGS.sample)
project_10.photo.attach(io: file, filename: 'snowden.jpg', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623364304/jumper2_lhtj77.jpg')
  project_11 = Project.create!( #12
    name: "Jumper",
    description: "Travel cheap and easily to visit your friends different countries",
    github_url: "https://github.com/jumper",
    user_id: users[11].id,
    project_tag: Project::PROJECT_TAGS.sample)
  project_11.photo.attach(io: file, filename: 'jumper.jpg', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623364194/businessprepwork_zpimen.jpg')
  project_12 = Project.create!( #13
    name: "Business-prepwork",
    description: "Sometimes you don't even know how to start your own business. Here comes Business-Prepwork, it will help you with everything you'll need to start your business!",
    github_url: "https://github.com/bprepwork",
    user_id: users[12].id,
    project_tag: Project::PROJECT_TAGS.sample)
project_12.photo.attach(io: file, filename: 'prepwork.jpg', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623364113/yachtme_cneegl.jpg')
  project_13 = Project.create!( #14
    name: "Yacht-ME",
    description: "A set sail Yachts, cabine share from local seehosts or destination seehosts",
    github_url: "https://github.com/yacht-me",
    user_id: users[13].id,
    project_tag: Project::PROJECT_TAGS.sample)
project_13.photo.attach(io: file, filename: 'yachtme.jpg', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623364009/costumestudio_pguxqc.jpg')
  project_14 = Project.create!( #15
    name: "Costume-Studio",
    description: "Have fun with costumes for festivals or if you are a famous person costume up too that nobody can recognize you.",
    github_url: "https://github.com/costume-studio",
    user_id: users[14].id,
    project_tag: Project::PROJECT_TAGS.sample)
project_14.photo.attach(io: file, filename: 'costume.jpg', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623361828/airbeeandbike_dmwdvj.jpg')
  project_15 = Project.create!( #16
    name: "Air-BEE-&-BIKE",
    description: "How you come from A to B? Right!, You rent a BIKE with Air-BEE-AND-BIKE, easy and smoothly on every city or island -trip.",
    github_url: "https://github.com/airbeeandbike",
    user_id: users[15].id,
    project_tag: Project::PROJECT_TAGS.sample)
project_15.photo.attach(io: file, filename: 'airbnbike.jpg', content_type: 'image/jpg')


file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623341613/flashcards_dwp9h9.jpg')
  project_16 = Project.create!( #17
    name: "Smart-Coding-Flashcards",
    description: "learn every flashcard from your CODING -BOOTCAMP wisely and smoothly",
    github_url: "https://github.com/smartcodingflashcards",
    user_id: users[16].id,
    project_tag: Project::PROJECT_TAGS.sample)
    project_16.photo.attach(io: file, filename: 'flashcards.jpg', content_type: 'image/jpg')


  file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623340516/orchest-ream_qxgdkf.jpg')
  project_17 = Project.create!( #18
    name: "Orchest-ream",
    description: "Stream your favorite classical musical Orchester from every portable devices",
    github_url: "https://github.com/orchest-ream",
    user_id: users[17].id,
    project_tag: Project::PROJECT_TAGS.sample)
  project_17.photo.attach(io: file, filename: 'orchester.jpg', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623341231/privateJet_jsibbr.jpg')
  project_18 = Project.create!( #19
    name: "Public-private-JET",
    description: "Rent easily a PRIVATE LUXURY JET for less Money than you think. You just need a group of 8 people and share the high-Price-Rate through 8",
    github_url: "https://github.com/my2022",
    user_id: users[18].id,
    project_tag: Project::PROJECT_TAGS.sample)
  project_18.photo.attach(io: file, filename: 'privatejet.jpg', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623341000/tourguider_zxipbf.jpg')
  project_19 = Project.create!( #20
    name: "portable-Tourguider",
    description: "Is a Tourguide App through your Phone. Where ever you are and don't know what that is,: Tourguider will spell it out for you and give you a real historical lesson.",
    github_url: "https://github.com/portanle-tourguider",
    user_id: users[19].id,
    project_tag: Project::PROJECT_TAGS.sample)
  project_19.photo.attach(io: file, filename: 'tourguide.jpg', content_type: 'image/jpg')
  
  file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623340814/1607280774-20201207-002245_rlpwua.jpg')
  project_20 = Project.create!( #21
    name: "NoonGIL",
    description: "Is a korean app from the Kdrama Start-up, it's a 3d object detection App for visually impaired people. NoonGIL can be their eyes to face every daily challenges.",
    github_url: "https://github.com/noongil",
    user_id: users[20].id,
    project_tag: Project::PROJECT_TAGS.sample)
  project_20.photo.attach(io: file, filename: 'kdrama.jpg', content_type: 'image/jpg')

  file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623340741/santi1_pjbekq.jpg')
  project_21 = Project.create!( #22
    name: "Santi's musician beats",
    description: "Record every music track in tone-studio filter style, doesn't matter if you hit your trumps, play guitar, or sing a song before coding lessons",
    github_url: "https://github.com/musicianbeats",
    user_id: users[21].id,
    project_tag: Project::PROJECT_TAGS.sample)
  project_21.photo.attach(io: file, filename: 'musician.jpg', content_type: 'image/jpg')
  
  file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623340074/easymoney_foyq54.jpg')
  project_22 = Project.create!( #23
    name: "Easy-Money",
    description: "An App which gives you the right correct answer of every question!",
    github_url: "https://github.com/easymoney",
    user_id: users[22].id,
    project_tag: Project::PROJECT_TAGS.sample)
  project_22.photo.attach(io: file, filename: 'easymoney.jpg', content_type: 'image/jpg')
  
 
  file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623339765/preply1_rzuaua.jpg')
  project_23 = Project.create!( #24
    name: "Preply",
    description: "Learn every language online by local mothertongues",
    github_url: "https://github.com/preply",
    user_id: users[23].id,
    project_tag: Project::PROJECT_TAGS.sample)
  project_23.photo.attach(io: file, filename: 'preply1.jpg', content_type: 'image/jpg')
  

  file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623338421/masteryourownway-streaming-project_nts8yb.jpg')
  project_24 = Project.create!( #25
    name: "Masteryourownway",
    description: "Breakthrough your limited beliefs, with the most trackable Training for Martial-Artists: ARE YOU READY?, TO FIGHT FOR YOUR DREAMS?!",
    github_url: "https://github.com/masteryouronwway",
    user_id: users[24].id,
    project_tag: Project::PROJECT_TAGS.sample)
  project_24.photo.attach(io: file, filename: 'masteryourownway.jpg', content_type: 'image/jpg')
  

file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623339429/Soto3_aq9xpz.jpg')
  project_25 = Project.create!( #26
    name: "Soto's - Been.there",
    description: "Share your travel experience on sightseeing, food, people, hotel, flight and more connected in one app.",
    github_url: "https://github.com/been.there",
    user_id: users[25].id,
    project_tag: Project::PROJECT_TAGS.sample)
project_25.photo.attach(io: file, filename: 'soto.jpg', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/dreamfighterjourney/image/upload/v1623339640/likewisely_wrkquz.jpg')
  project_26 = Project.create!( #27
    name: "like-wisely",
    description: "Avoid real life mistakes which leads to pain decisions. Share your real and honest life experience instead, so that everybody can learn from it!",
    github_url: "https://github.com/likewisely",
    user_id: users[26].id,
    project_tag: Project::PROJECT_TAGS.sample)
    project_26.photo.attach(io: file, filename: 'likewisely.jpg', content_type: 'image/jpg')




p "Projects created!"



p 'Creating Tests...'

# 27.times do |i|

#   4.times do
#   projects = Project.all
#   name = Faker::Computer.stack
#   description = Faker::Company.bs
#   test_url = Faker::Internet.domain_name
#   sample_size = Faker::Number.number(digits: 2)
#   date = rand(Date.today..Date.today + 30)

#   Test.create!(
#   name: name,
#   description: description,
#   test_url: test_url,
#   sample_size: sample_size,
#   time_limit: date,
#   project_id: projects[i].id
# )



test_zero_0 = Test.create!( #1
    name: "User Experience for the Website Builder",
    description: "Haye fun with trying out our new Website Builder to implement easily everything on a basic Website. After you even can use the page for your project. Join our Test to... ",
    test_url: "https://github.com/test/1/website-builder",
    sample_size: 20,
    time_limit: rand(Date.today..Date.today + 30),
    project_id: project_zero_0.id 
  )
  test_0 = Test.create!( #2
  name: "Implement our new gem 'Valeriedations'",
  description: "add our gem into your rails app to the Gemfile and feel the better workflow",
  test_url: "https://github.com/test/1/valeriedations",
  sample_size: 21,
  time_limit: rand(Date.today..Date.today + 30),
  project_id: project_0.id 
)

test_1 = Test.create!( #3
name: "Shop on my mood",
description: "Test and Shop on our new website 'my mood' and find the right clothes for your mood of the day. Happy shopping and testing:)",
test_url: "https://github.com/test-and-shop-my-mood",
sample_size: 50,
time_limit: rand(Date.today..Date.today + 30),
project_id: project_1.id 
)

test_2 = Test.create!( #4
name: "Sign up and create a Blog profile page",
description: "Register on Soul Blogs and create your own Blog with your passion or experience and write your first Blog post and share it!",
test_url: "https://github.com/test-soul-blogs",
sample_size: 55,
time_limit: rand(Date.today..Date.today + 30),
project_id: project_2.id 
)

test_3 = Test.create!( #5
name: "Level up your Life, do our first user journey",
description: "Sign up and create an first Level of what you want to achieve today and what you will get as a bonus for yourself after finish that.",
test_url: "https://github.com/likewisely",
sample_size: 20,
time_limit: rand(Date.today..Date.today + 30),
project_id: project_3.id 
)

test_4 = Test.create!( #6
name: "Share your first item on Sportsswap",
description: "Upload an picture of your favorite Sport-Equioment, share it, sell it and rent another one in your location. Tell us your experience afterwards.",
test_url: "https://github.com/likewisely",
sample_size: 20,
time_limit: rand(Date.today..Date.today + 30),
project_id: project_4.id 
)

test_5 = Test.create!( #1
name: "Upload a picture of your plant and share it",
description: "This is a Plantfam - Social Media your plants. Give feedback on our fronent and functionality",
test_url: "https://github.com/test-share-for-plants",
sample_size: 5,
time_limit: rand(Date.today..Date.today + 30),
project_id: project_5.id 
)

test_6 = Test.create!( #1
name: "Make one Smell test get one free trial-test-product for it.",
description: "Test our User-Story to upload your Smell test on time. You will get a free trial-test-Product of Parfume for your nose",
test_url: "https://github.com/anosmiatest",
sample_size: 5,
time_limit: rand(Date.today..Date.today + 30),
project_id: project_6.id 
)

test_7 = Test.create!( #1
name: "Upload your Art and get Feedback",
description: "Test our User-Story to upload an Art and get and write an Feedback. Share your Feedback to us afterwards :)",
test_url: "https://github.com/feedbacker",
sample_size: 5,
time_limit: rand(Date.today..Date.today + 30),
project_id: project_7.id 
)

test_8 = Test.create!( #1
name: "My2022 set a goal and achieve it!",
description: "Share your experience of one of our first User-Stories. Set a goal which you want to achieve or choose one of the 3 Example goals and achieve it. Share your experience afterwards. Did you achieve it?  ",
test_url: "https://github.com/test-my2022",
sample_size: 10,
time_limit: rand(Date.today..Date.today + 30),
project_id: project_8.id 
)


test_9 = Test.create!( #7
name: "Bitwalk - Walk and deserve Bitcoin",
description: "I want to test my feature if my location track your walking, i will connect it to your Bitcoin Account later. You will get paid in Bitcoin aswell. So feel free to share your wallet.",
test_url: "https://github.com/test-walk",
sample_size: 15,
time_limit: rand(Date.today..Date.today + 30),
project_id: project_9.id 
)

test_10 = Test.create!( #8
name: "Test our Snowdenfiles Messaging",
description: "Use our Messenger to message other testers and share your user experience.",
test_url: "https://github.com/snowdenfiles-messenger-test",
sample_size: 5,
time_limit: rand(Date.today..Date.today + 30),
project_id: project_10.id 
)

test_11 = Test.create!( #11
name: "Give me Feedback on my Travel-Booking",
description: "Test the User Journey on Jumper to book a journey to your friend from another country.",
test_url: "https://github.com/jumper-test-booking",
sample_size: 5,
time_limit: rand(Date.today..Date.today + 30),
project_id: project_11.id 
)

test_12 = Test.create!( #12
name: "Test our task Manager",
description: "Test our Business-prepwork-App. How is your experience with testing to create a task, delete, update it and organize yourself with it?",
test_url: "https://github.com/businessprepwork",
sample_size: 20,
time_limit: rand(Date.today..Date.today + 30),
project_id: project_12.id 
)

test_13 = Test.create!( #13
name: "Book a Cabine one one Yacht",
description: "Test our Booking feature and give us feedback on the color, grid, searching for in yacht in your location and book one cabine on that yacht.",
test_url: "https://github.com/test-booking/yacht-me",
sample_size: 20,
time_limit: rand(Date.today..Date.today + 30),
project_id: project_13.id 
)

test_14 = Test.create!( #1
name: "Test our Costume Gallery",
description: "Give us feedback on our Front end Design of our costume Gallery.",
test_url: "https://github.com/test-costume-gallery",
sample_size: 20,
time_limit: rand(Date.today..Date.today + 30),
project_id: project_14.id 
)

test_15 = Test.create!( #1
name: "Rent a bike on your Island Trip",
description: "Test our renting feature and gives us feedback on our design and on your own user-journey",
test_url: "https://github.com/airbeeandbike-test-renting",
sample_size: 20,
time_limit: rand(Date.today..Date.today + 30),
project_id: project_15.id 
)

test_16 = Test.create!( #1
name: "Swipe Function",
description: "Test our Swipe function to swipe through our learning flashcards. Give us feedback if everything works smoothly",
test_url: "https://github.com/likewisely",
sample_size: 10,
time_limit: rand(Date.today..Date.today + 30),
project_id: project_16.id 
)

test_17 = Test.create!( #1
name: "Watch one Orchester in Live Stream",
description: "We want to test our Video-Streaming-Platform for Classical Music. So get yourself a glas of wine and something delicious to eat and enjoy 30 minutes livestream of the classical Orchester 'Berliner Philharmoniker'. Test if everything works well without interrupt the live-stream.",
test_url: "https://github.com/likewisely",
sample_size: 20,
time_limit: rand(Date.today..Date.today + 30),
project_id: project_17.id 
)

test_18 = Test.create!( #1
name: "Test a booking shared private Jet with your friends",
description: "Test our Booking feature and give us feedback on the idea to book a jet with your friends and share costs.",
test_url: "https://github.com/likewisely",
sample_size: 10,
time_limit: rand(Date.today..Date.today + 30),
project_id: project_18.id 
)

test_19 = Test.create!( #19
name: "Tourguider-Test",
description: "Test our App by open it and holding your phone camera to a famous buildung and listen well to the Tourguide about the historic tale of that building.",
test_url: "https://github.com/tourguider-test",
sample_size: 10,
time_limit: rand(Date.today..Date.today + 30),
project_id: project_19.id 
)

test_20 = Test.create!( #20
name: "Test a 3d object detection",
description: "Use your phone to let it make an 3d object detection and tell you what is infront of you.",
test_url: "https://github.com/3d-object-test",
sample_size: 9,
time_limit: rand(Date.today..Date.today + 30),
project_id: project_20.id 
)

test_21 = Test.create!( #21
name: "Record a music track on your phone",
description: "Test our recorder and give feedback to the soundquality and to the frontend of our or project.",
test_url: "https://github.com/santismusician",
sample_size: 8,
time_limit: rand(Date.today..Date.today + 30),
project_id: project_21.id 
)

test_22 = Test.create!( #22
name: "Test our Answering App",
description: "Ask your friends a question and give us feedback on how you satisfied with the 'Easy Money-Answer!'",
test_url: "https://github.com/easymoney-test",
sample_size: 7,
time_limit: rand(Date.today..Date.today + 30),
project_id: project_22.id 
)

test_23 = Test.create!( #23
name: "Book a english teacher",
description: "Test our booking to book a english teacher, how was the test lesson and your technical booking user-experience?",
test_url: "https://github.com/likewisely",
sample_size: 5,
time_limit: rand(Date.today..Date.today + 30),
project_id: project_23.id 
)

test_24 = Test.create!( #25
name: "Message Martial Artists and book a lesson",
description: "Test the Masteryourownway app by having a free test account to book a free online lesson, messages users and add yourself to Martial Arts school.",
test_url: "https://github.com/masteryourownway-test",
sample_size: 3,
time_limit: rand(Date.today..Date.today + 30),
project_id: project_24.id 
)

test_25 = Test.create!( #26
name: "Share your Travel Experience easily",
description: "Share your user journey experience of Soto's Been.there. Add easily, pictures and text to your travel experience guide.",
test_url: "https://github.com/been.there.test",
sample_size: 15,
time_limit: rand(Date.today..Date.today + 30),
project_id: project_25.id 
)

test_26 = Test.create!( #27
name: "Test our Blog - Editor",
description: "test our blog editor with all the function in it to write down one of your deepest Life experience to share.",
test_url: "https://github.com/likewisely",
sample_size: 18,
time_limit: rand(Date.today..Date.today + 30),
project_id: project_26.id 
)


# end
# end

TEST_NAME = %w[searchbar order\ button homepage map layout animation scroll gallery\ user\ page storefront new\ logo illustration banner]

TEST_DESCRIPTION_VERB = %w[Need Looking\ for Searching\ for Want Could\ really\ do\ with Here\ to\ get\ some]

TEST_PRO_1 = %w[some\ feedback some\ ideas a\ couple\ of\ ideas a\ bit\ of\ feedback]

TEST_PRO_EX = %w[I\ really\ like\ it\ but\ I\ need\ a\ second\ opinion. I'm\ not\ a\ fan\ of\ it\ to\ be\ honest.\ I\ think\ it\ needs\ some\ work\. I'm\ having\ fun\ with\ it\ but\ I\ want\ a\ second\ pair\ of\ eyes]

TEST_PRO_2 = %w[Could\ you Would\ you\ be\ able\ to If\ at\ all\ possible,]

TEST_PRO_3 = %w[tell\ me\ what's\ good\ and\ not\ so\ good let\ me\ know\ what\ you\ think give\ me\ your\ honest\ opinion]

TEST_PRO_4 = %w[Ta! Thanks! Much\ appreciated! Looking\ forward\ to\ hearing\ your\ comments! Any\ feedback\ is\ appreciated!]

# 27.times do |i|

#   rand(1..5).times do
#   projects = Project.all
#   name = TEST_NAME.sample
#   description = "#{TEST_DESCRIPTION_VERB.sample} #{TEST_PRO_1.sample} on my new #{name}. #{TEST_PRO_2.sample} #{TEST_PRO_3.sample}? #{TEST_PRO_4.sample}"
#   test_url = Faker::Internet.domain_name
#   sample_size = Faker::Number.number(digits: 2)
#   date = rand(Date.today..Date.today + 30)

#   Test.create!(
#   name: name,
#   description: description,
#   test_url: test_url,
#   sample_size: sample_size,
#   time_limit: date,
#   project_id: projects.sample.id
# )
# end

# end

p 'tests created!'
p 'Creating reviews'

27.times do |i|
  user = User.all.sample.id
  test = Test.all.sample.id
  TestUser.create(user_id: user, test_id: test)
end

TestUser.create!(
  test_id: Test.last.id,
  user_id: user_zero.id
  )


27.times do |i|
users = User.all
tests = Test.all.sample
rating = rand(0.0..5.0)

rand(1..5).times do

review_content = %w[Needs\ more\ color It's\ a\ little\ confusing... Could\ do\ with\ better\ functionality Great!\ I\ loved\ it! Would\ recommend\ to\ my\ friends! I\ don't\ really\ like\ the\ shapes\ of\ the\ buttons I'm\ in\ awe\ of\ the\ design!].sample
questions = Review::QUESTION_1_CATEGORIES.sample
  Review.create!(
  rating: rating,
  content: review_content,
  user_id: users.sample.id,
  question1: questions,
  test_id: tests.id
)
end
end

p 'reviews created!'
p "you have #{Project.count} projects"
