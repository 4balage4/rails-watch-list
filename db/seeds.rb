# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
# #
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Bookmark.destroy_all
List.destroy_all
Movie.destroy_all


10.times do |movie|
  randomnumber = [1, 2, 3, 4, 5].sample
  movie = Movie.create(title: Faker::Movie.title, overview: Faker::Movie.quote, poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: randomnumber )
  puts movie.title
end

# require "open-uri"

# file = URI.open("http://tmdb.lewagon.com/movie/top_rated?api_key=<your_api_key>")
# movie = Movie.new(title: "NES", body: "A great console")
# movie.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# movie.save
