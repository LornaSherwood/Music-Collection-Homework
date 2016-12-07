require('pg')

class Albums

  attr_reader :id, :title, :genre, :artist_id

  def initialize(options)
    @id = options['id'] unless options['id'].nil?
    @title = options['title']
    @genre = genre['genre']
    @artist_id = ['artist_id'].to_i
  end


end