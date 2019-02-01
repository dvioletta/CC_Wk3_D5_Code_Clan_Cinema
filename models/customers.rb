require_relative("../db/sql_runner")
require_relative('tickets')
require_relative('films')

class Customers

  attr_reader :id
  attr_accessor :name, :funds

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @funds = options['funds'].to_i
  end

  def save() #Create method for instance
    sql = "INSERT INTO customers (name, funds) VALUES ($1, $2) RETURNING id"
    values = [@name, @funds]
    customers = SqlRunner.run(sql, values).first
    @id = customers['id'].to_i
  end

  def update() #Update method for instance
    sql = "UPDATE customers SET(name, funds) =($1, $2) WHERE id = $3"
    values = [@name, @funds, @id]
    SqlRunner.run(sql, values)
  end

  def delete() #Delete method for instance
    sql = "DELETE * FROM customers where id =$1"
    values = [@id]
    SqlRunner.run(sql, values)
  end



  def self.delete_all() #Delete all method for class
    sql = "DELETE FROM customers"
    SqlRunner.run(sql)
  end







end
