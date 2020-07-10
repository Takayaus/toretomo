# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'adminuser', password_confirmation: 'adminuser')
Category.create!(name: 'スポーツジム')
Category.create!(name: 'ヨガ')
Category.create!(name: 'スイミング')
Category.create!(name: 'ゴルフ')
Category.create!(name: '格闘技')
Category.create!(name: 'クライミング')
Category.create!(name: 'テニス')
Category.create!(name: 'フットサル')
Category.create!(name: 'ダンス')

30.times do |n|
  name = Faker::Name.name
  age = rand(20..45)
  number = "06-0000-0000"
  email = Faker::Internet.email
  sex = rand(0..1)
  array = [4000, 5000, 6000, 7000, 8000]
  price = array.sample
Trainer.create!(name: name, 
                        age: age,
                        number: number,
                        email: email,
                        sex: sex,
                        title: "",
                        content: "この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ",
                        price: price,
                        image: ""
)
end