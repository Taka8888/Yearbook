# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
100.times do |m|
 email = Faker::Internet.email
 name=Faker::Name.name
 password = "password"
 avatar=Faker::Avatar.image
User.create!(

             name: name,
              email: email,
              password: password,
              password_confirmation: password,
              uid: m,
              provider: m,
              image_url: avatar

              )
end

n = 1
while n <= 100
  Topic.create(
    title: "あああ",
    content: "hoge",
    user_id: n
  )
  n = n + 1
end

n = 1
while n <= 100
  Coment.create(
    user_id: n,
    topic_id: n,
    content: "hogehoge"
  )
  n = n + 1
end
