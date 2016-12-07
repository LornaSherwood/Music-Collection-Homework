require('pg')
require_relative('./db/sql_runner.rb')

class Artists

  attr_reader :id, :name

  def initialize(options)
    @id = options['id'] unless options['id'].nil?
    @name = name
  end


  def save()
    sql = "
      INSERT INTO artists (name) 
      VALUES ('#{name}')
      RETURNING *;
      "
    artist = SqlRunner.run(sql)[0] #last [0] optional
    return Artists.new(artist)
  end


  def update()
    sql = "
      UPDATE artists
      SET (name) = 
      ('#{@name}'')
      WHERE id = #{@id}
    ;"
    artist = SqlRunner.run(sql)
    return Artist.new(artist)
  end


  def delete()
    sql = "DELETE FROM artists WHERE id = #{@id};"
    SqlRunner.run(sql)
  end

end