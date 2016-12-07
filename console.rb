require('pry')
require_relative('albums.rb')
require_relative('artists.rb')

Albums.delete_all
Artists.delete_all


artist1 = Artists.new ( {'name' => "Razorlight"})
artist1.save()

artist2 = Artists.new ( {'name' => "Muse"})
artist2.save()

album1 = Albums.new ( {'title' => "Up all night", 'genre' => "Indie rock", 'artist_id' => artist1.id})
album1.save()

album2 = Albums.new ( {'title' => "Drones", 'genre' => "Alternative rock", 'artist_id' => artist2.id})
album2.save()

album3 = Albums.new ( {'title' => "The 2nd Law", 'genre' => "Alternative rock", 'artist_id' => artist2.id})
album3.save()


binding.pry



nil