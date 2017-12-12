# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


genre_names = ['Jazz', 'Funk', 'Rock', 'Glam Rock', 'Soft Rock', 'Gospel',
               'Classical']

genre_names.each do |genre_names|
  Genre.create(name: genre_names)

end

puts "Hey, you got some new Genres. "