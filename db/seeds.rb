# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

name=Faker::Name.name
password = "password"
avatar=Faker::Avatar.image

100.times do |m|
  email = Faker::Internet.email
  user = User.create!(

             name: name,
              email: email,
              password: password,
              password_confirmation: password,
              uid: m,
              provider: m,
              image_url: avatar

              )
              topic = Topic.create!(

              title: "いいいいいい",
              user_id: user.id,
              content: "ううううう",
              avatar:  avatar

                            )
                            Comment.create!(
                              user_id: user.id,
                              topic_id: topic.id,
                              content: "hogehoge"
                            )
end
# 
# 100.times do |m|
# Topic.create!(
#
# title: "いいいいいい",
# user_id: m,
# content: "ううううう",
# avatar:  avatar
#
#               )
# end
#
# n = 1
# while n <= 100
#   Comment.create!(
#     user_id: n,
#     topic_id: n,
#     content: "hogehoge"
#   )
#   n = n + 1
# end
