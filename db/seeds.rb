# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
10.times do
    username = Faker::Name.name
    caption = Faker::Quote.famous_last_words 
    # url = Faker::LoremPixel.image("500x500", false, 'sports', nil, username)
    url  = Faker::LoremPixel.image(size: "500x600", is_gray: false, category: 'sports', number: nil, text: username)
    like = Faker::Number.number(digits: 4)
    Photo.create!(url: url, username: username, caption: caption, likes_count: like)
end