# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.destroy_all
User.destroy_all
Comment.derstroy_all

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

10.times do |i|
  User.create({
    email: "user_#{i}@gmail.com",
    password: '123456'
  })

  10.times do |i|
    Comment.create({
      content: Faker::Lorem.paragraph,
      created_at: Faker::Number.number(digits: 1).to_i.day.ago
    })
end