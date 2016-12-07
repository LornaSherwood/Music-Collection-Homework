require('pg')
require_relative('./db/sql_runner.rb')

class Artists

  attr_reader :id, :name

  def initialize(options)
    @id = options['id'] unless options['id'].nil?
    @name = options['name']
  end


  def save()
    sql = "
      INSERT INTO artists (name) 
      VALUES ('#{name}')
      RETURNING *;
      "
    artist = SqlRunner.run(sql)
    @id = artist[0]['id'].to_i
    
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

  def self.delete_all()
    sql = "DELETE FROM artists;"
    SqlRunner.run(sql)
  end

end