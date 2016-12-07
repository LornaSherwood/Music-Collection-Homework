require('pry')
require_relative('albums.rb')
require_relative('artists.rb')

#delete_all to refresh each time run

artist1 = Artists.new ( {'name' => "Razorlight"})
artist1.save()





binding.pry
nil