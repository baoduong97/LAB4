# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
# require 'action_view'
# require 'action_view/helpers'
include ActionView::Helpers::DateHelper
# include ActionController::
# include ::TableFieldHelper
# include ActionController::Base
# include ActionController::Helpers::ClassMethods
3.times do
    username = Faker::Name.name
    caption = Faker::Quote.famous_last_words 
    # url = Faker::LoremPixel.image("500x500", false, 'sports', nil, username)
    url  = Faker::LoremPixel.image(size: "500x600", is_gray: false, category: 'sports', number: nil, text: username)
    like = Faker::Number.number(digits: 4)
    time_ago = Faker::Number.number(digits: 1)
    # from_time = (time_ago.year).ago
    time_url = time_ago_in_words(time_ago.year.ago) 
    Photo.create!(url: url, username: username, caption: caption, likes_count: like, avatar_url:time_url)
end