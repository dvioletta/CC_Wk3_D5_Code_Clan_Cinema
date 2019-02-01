require_relative('models/tickets')
require_relative('models/customers')
require_relative('models/films')

require('pry-byebug')

Tickets.delete_all()
Customers.delete_all()
Films.delete_all()

customer1 = Customers.new({'name' => 'Liz Babb','funds' => 50})
customer1.save()
customer2 = Customers.new({'name' => "Anita Squires", 'funds' => 70})
customer2.save()
customer3 = Customers.new({'name' => "Ivan Morris", 'funds' => 80})
customer3.save()
customer4 = Customers.new({'name' => "Simon Rank", 'funds' =>40})
customer4.save()
customer5 = Customers.new({'name' => "John Taylor", 'funds' =>100})
customer5.save()

customer1.funds = 80
customer1.update()

film1 = Films.new({'title' => "Can You Ever Forgive Me?", 'price' => 5 })
film1.save()
film2 = Films.new({'title' => "The Favourite", 'price' => 7 })
film2.save()
film3 = Films.new({'title' => "Glass", 'price' => 10 })
film3.save()
film4 = Films.new({'title' => "Green Book", 'price' => 7 })
film4.save
film5 = Films.new({'title' => "Mary Poppins Returns", 'price' => 15 })
film5.save

ticket1 = Tickets.new({'customers_id' => customer1.id, 'films_id' => film2.id})
ticket1.save()
ticket2 = Tickets.new({'customers_id' => customer1.id, 'films_id' => film2.id})
ticket2.save()
ticket3 = Tickets.new({'customers_id' => customer2.id, 'films_id' => film1.id})
ticket3.save()
ticket4 = Tickets.new({'customers_id' => customer3.id, 'films_id' => film4.id})
ticket4.save()
ticket5 = Tickets.new({'customers_id' => customer3.id, 'films_id' => film1.id})
ticket5.save()
ticket6 = Tickets.new({'customers_id' => customer4.id, 'films_id' => film3.id})
ticket6.save()
ticket7 = Tickets.new({'customers_id' => customer5.id, 'films_id' => film3.id})
ticket7.save()
ticket8 = Tickets.new({'customers_id' => customer1.id, 'films_id' => film5.id})
ticket8.save()



binding.pry
nil
