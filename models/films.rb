require_relative("db/models")

Class film

attr_reader :film_id
attr_accessor :title, :price

def initialize(options)
  @film_id = options ['film_id'].to_i if options['id']
  @title = options['title']
  @price = optons['price']
end

def save()
  sql = "INSERT INTO films (film_id, title, price) VALUES ($1, $2, $3) returning id"
  values = [@film_id, @title, @price]
  film = SqlRunner.run(sql, values).first
  @film_id = film['id'].to_i
end

def update()
  sql = "UPDATE films SET (film_id, title, price) = ($1, $2, $3) WHERE id = $4"
  values = [@film_id, @title, @price]
  SqlRunner.run(sql, values)
end

def delete()
  sql = "DELETE * FROM films where film_id = $1"
  values = [@film_id]
  SqlRunner.run(sql, values)
end 
