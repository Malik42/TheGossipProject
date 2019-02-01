# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
City.destroy_all
Gossip.destroy_all
Tag.destroy_all
PrivateMessage.destroy_all
Comment.destroy_all
Like.destroy_all

10.times do 
  ville = City.create!(name: Faker::Address.city,zip_code: Faker::Address.zip_code)
end

10.times do 
  utilisateur = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.paragraph,email: Faker::Internet.email, age: rand(18..75),city_id: rand((City.first.id)..(City.last.id)))
end

10.times do
 tweety = Gossip.create!(title: Faker::Lorem.words(8),content: Faker::Lorem.sentence,user_id: rand((User.first.id)..(User.last.id)))
end


10.times do
  style = Tag.create!(title: Faker::Lorem.words(8),gossip_id: rand((Gossip.first.id)..(Gossip.last.id)))
end

10.times do 
  pm = PrivateMessage.create!(content: Faker::Lorem.sentence,sender_id: rand((User.first.id)..(User.last.id)),recipient_id: rand((User.first.id)..(User.last.id)))
end