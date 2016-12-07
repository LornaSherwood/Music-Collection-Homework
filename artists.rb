require('pg')

class Artists

  attr_reader :id, :name

  def initialize
    @id = options['id'] unless options['id'].nil?
    @name = name
  end


end