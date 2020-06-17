# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

30.times do |n|
  name = Faker::Name.name
  age = rand(20..45)
  number = "06-0000-0000"
  email = Faker::Internet.email
Trainer.create!(name: name, 
                        age: age,
                        number: number,
                        email: email,
                        title: "",
                        content: "",
                        profile: "",
                        image: ""
)
end