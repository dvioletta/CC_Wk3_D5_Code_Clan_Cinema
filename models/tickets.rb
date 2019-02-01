require_relative("../db/sql_runner")
require_relative('models/customers')
require_relative('models/films')

class Customers

  attr_reader :id
  attr_accessor :films_id, :customers_id

  def initalize(options)
    @id = options[id].to_i if options['id']
    @films_id = options[films_id].to_i
    @customers_id = options[customers_id].to_i
  end
end
