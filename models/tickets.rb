require_relative("../db/sql_runner")
require_relative('customers')
require_relative('films')

class Tickets

  attr_reader :id
  attr_accessor :films_id, :customers_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @films_id = options['films_id'].to_i
    @customers_id = options['customers_id'].to_i
  end

  def save() #create method
    sql = "INSERT INTO tickets (films_id, customers_id) VALUES ($1, $2) RETURNING id"
    values = [@films_id, @customers_id]
    tickets = SqlRunner.run(sql, values)[0];
    @id = tickets['id'].to_i
  end

  def update() #update method
    sql = "UPDATE films SET (films_id, customers_id) = ($1, $2) WHERE id = $4"
    values = [@films_id, @customers_id, @id]
    SqlRunner.run(sql, values)
  end

  def delete() #delete from instance
    sql = "DELETE * FROM tickets where id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end


  def self.all() #save all method
    sql = "SELECT * FROM tickets"
    data = SqlRunner.run(sql)
    return data.map{|tickets| Tickets.new(tickets)}
  end

  def self.delete_all() #delete all method
    sql = "DELETE FROM tickets"
    SqlRunner.run(sql)
  end



end
