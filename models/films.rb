require_relative("../db/sql_runner")
require_relative('tickets')
require_relative('customers')

class Films

  attr_reader :id
  attr_accessor :title, :price

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @price = options['price'].to_i
  end

  def save()
    sql = "INSERT INTO films (title, price) VALUES ($1, $2) RETURNING id"
    values = [@title, @price]
    films = SqlRunner.run(sql, values).first
    @id = films['id'].to_i
  end

  def update() #Update method for instance
    sql = "UPDATE films SET(title, price) =($1, $2) WHERE id = $3"
    values = [@title, @price, @id]
    SqlRunner.run(sql, values)
  end

  def delete() #Delete method for instance
    sql = "DELETE * FROM films where id =$1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.all() #Save method for class
    sql = "SELECT * FROM films"
    films_data = SqlRunner.run(sql)
    return Films.map_items(films_data)
  end

  def self.delete_all() #Delete method for class
    sql = "DELETE FROM films"
    SqlRunner.run(sql)
  end






end
