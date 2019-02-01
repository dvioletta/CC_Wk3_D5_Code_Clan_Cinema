require_relative('models/tickets')
require_relative('models/customers')
require_relative('models/films')

require ('pry-byebug')

Tickets.delete_all()
Customers.delete_all()
Films.delete_all()

customer1 = Customers.new({'name' => "Liz Babb", 'funds' => 50})
customer2 = Customers.new({'name' => "Anita Squires", 'funds' => 70})
customer3 = Customers.new({'name' => "Ivan Morris", 'funds' => 80})
customer4 = Customers.new({'name' => "Simon Rank", 'funds' =>40})
customer5 = Customers.new({'name' => "John Taylor", 'funds' =>100})

film1 = Films.new({'title' => "Can You Ever Forgive Me?", 'price' => 5 })
film2 = Films.new({'title' => "The Favourite", 'price' => 7 })
film3 = Films.new({'title' => "Glass", 'price' => 10 })
film4 = Films.new({'title' => "Green Book", 'price' => 7 })
film5 = Films.new({'title' => "Mary Poppins Returns", 'price' => 15 })

ticket1 = tickets.new({'customers_id' => customer1.id, 'films_id' => film2.id})
ticket2 = tickets.new({'customers_id' => customer1.id, 'films_id' => film2.id})
ticket3 = tickets.new({'customers_id' => customer2.id, 'films_id' => film1.id})
ticket4 = tickets.new({'customers_id' => customer3.id, 'films_id' => film4.id})
ticket5 = tickets.new({'customers_id' => customer3.id, 'films_id' => film1.id})
ticket6 = tickets.new({'customers_id' => customer4.id, 'films_id' => film3.id})
ticket7 = tickets.new({'customers_id' => customer5.id, 'films_id' => film3.id})
ticket8 = tickets.new({'customers_id' => customer1.id, 'films_id' => film5.id})



binding.pry
nil
