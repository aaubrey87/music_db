namespace :db do
  desc 'Clear the DB and fill with excellant sample data'
  task populate: :environment do

    # Clear out the old junk
    [Song, Artist, Genre].each do |data|
      data.destroy_all

    end

    # Add Genres, Artists, and Songs
    5.times do
      genre = Genre.create(name: Faker::StarWars.specie)

      rand(5..10).times do
        artist = Artist.create(name: Faker::Superhero.name, genre_id: genre.id)

        rand(10..15).times do
          song = Song.create(name: Faker::Company.catch_phrase, artist_id:                                                    artist.id)
        end
      end
    end

    puts "Now you got some good fake data!"
  end

end