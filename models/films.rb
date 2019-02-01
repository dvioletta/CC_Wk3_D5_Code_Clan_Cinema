require_relative("../db/sql_runner")
require_relative('models/tickets')
require_relative('models/customers')

class Customers

  attr_reader :id
  attr_accessor :title, :price

  def initalize(options)
    @id = options[id].to_i if options['id']
    @title = options[title]
    @price = options[price].to_i
  end
end
