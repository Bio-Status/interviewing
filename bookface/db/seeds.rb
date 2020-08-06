# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
  user = User.create(name: Faker::TvShows::GameOfThrones.character)
end

100.times do
  user = User.all.sample
  user.posts.create(title: Faker::Marketing.buzzwords, body: Faker::TvShows::GameOfThrones.quote)
end

500.times do
  post = Post.all.sample
  user = User.all.sample

  post.comments.create(user: user, body: Faker::Hacker.say_something_smart)
end

# Create users with no activity
user = User.create(name: Faker::TvShows::GameOfThrones.character)
user = User.create(name: Faker::TvShows::GameOfThrones.character)
