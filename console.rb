require_relative('models/tickets')
require_relative('models/customers')
require_relative('models/films')

require('pry_byebug')

Ticket.delete_all()
Customer.delete_all()
Film.delete_all()

customer1 = Customer.new({
  'name' => 'Lou',
  'funds' => '50',
  'customer_id' => '1'
  })

  customer1.save()

  customer2 = Customer.new({
    'name' => 'Mike',
    'funds' => '100',
    'customer_id' => '2'
    })

  customer2.save()

  film1 = Film.new({
  'title' => 'The Favourite',
  'price' => '5',
  'film_id' => '1'
})

  film1.save()

  film2 = Film.new({
    'title' => 'Midsommer',
    'price' => '9',
    'film_id' => '2'
  })

  film2.save()

  ticket1 = Ticket.new({'customer_id' => customer_id1, 'film_id' => film_id1})
  ticket2 = Ticket.new({'customer_id' => customer_id2, 'film_id' => film_id2})
  ticket3 = Ticket.new({'customer_id' => customer_id3, 'film_id' => film_id3})
  ticket4 = Ticket.new({'customer_id' => customer_id4, 'film_id' => film_id4})
  ticket5 = Ticket.new({'customer_id' => customer_id5, 'film_id' => film_id5})
  ticket6 = Ticket.new({'customer_id' => customer_id6, 'film_id' => film_id6})

ticket1.save()
ticket2.save()
ticket3.save()
ticket4.save()
ticket5.save()
ticket6.save()

binding.pry
nil
