require('pry')
require_relative('albums.rb')
require_relative('artists.rb')

Albums.delete_all
Artists.delete_all


artist1 = Artists.new ( {'name' => "Razorlight"})
artist1.save()

album1 = Albums.new ( {'title' => "Up all night", 'genre' => "Indie rock", 'artist_id' => artist1.id})
album1.save()


binding.pry



nil