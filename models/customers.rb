require_relative("../db/models")

Class Customer
 attr_reader :customer_id
 attr_accessor :name, :funds

 def initialize(options)
   @customer_id = options['customer_id'].to_i if options['id']
   @name = options['name']
   @funds = options['funds']
 end

def save()
  sql = "INSERT INTO customer(customer_id, name, funds)
        VALUES ($1, $2, $3) RETURNING id"
  values = [@customer_id, @name, @funds]
  customer = SqlRunner.run(sql, values).first
  @customer_id = customer['id'].to_i
end

def update()
  sql = "UPDATE customer SET(customer_id, name, funds) = ($1,$2, $3) WHERE id = $4"
  values = [@customer_id, @name, @funds]
  SqlRunner.run(sql, values)
end

def delete
  sql = "DELETE * FROM customers where customer_id = $1"
  values = [@customer_id]
  SqlRunner.run(sql, values)
end

def self.all()
  sql = "SELECT * FROM customers"
  customer_data = SqlRunner.run(sql)
  return Customer.map_items(customer_data)
end

def self.delete_all()
  sql = "DELETE FEOM CUSTOMERS"
  SqlRunner.run(sql)
end

def self.map_items(data)
  result = data.map{ |customer| Customer.new(customer)}
  return result
end
