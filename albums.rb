require('pg')

class Albums

  attr_reader :id, :title, :genre, :artist_id

  def initialize(options)
    @id = options['id'] unless options['id'].nil?
    @title = options['title']
    @genre = options['genre']
    @artist_id = options['artist_id'].to_i
  end


  def save
    sql = "
      INSERT INTO albums (title, genre, artist_id) 
      VALUES ('#{title}', '#{genre}', #{artist_id})
      RETURNING *
    ;"
    albums = SqlRunner.run(sql)
    @id = albums[0]['id'].to_i
  end


  def update
    sql = "
      UPDATE albums
      SET (title, genre, artist_id) = 
      ('#{title}', '#{genre}', #{artist_id})
      WHERE id = #{@id}
    ;"
    album = SqlRunner.run(sql)
    return Album.new(artist)
  end

  def show_artist
    sql = "SELECT * FROM artists WHERE id = #{@artist_id};"
    artists = SqlRunner.run(sql)
    return artists.map { |artist| Artists.new(artist) }
  end

  def delete
    sql = "DELETE FROM albums WHERE id = #{@id};"
    SqlRunner.run(sql)
  end

  def self.delete_all()
    sql = "DELETE FROM albums;"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM albums;"
    albums = SqlRunner.run(sql)
    return albums.map { |album| Albums.new(album)}
  end

end