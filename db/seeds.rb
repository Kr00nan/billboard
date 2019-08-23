# use 'rails db:reset' from the command line to recreate/reset db

# using faker gem
# randomly generates bands and genres
25.times do
  Artist.create(
    name: Faker::Music.band,
    genre: Faker::Music.genre
    )
end

# randomly generates billboard names from publisher titles...
5.times do
  Billboard.create(
    name: Faker::Book.publisher
  )
end

# randomly generates songs, and assigns them to an artist and billboard
100.times do
  Song.create(
    title: Faker::Book.title,
    artist_id: rand(100) + 1,
    billboard_id: rand(5) +1
  )
end