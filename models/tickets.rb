require_relative("DB/models")

class ticket

  attr_reader  :id, :customer_id, :film_id

  def initialize(options)
    @id = options['id']
    @customer_id = options['customer_id']
    @film_id = options['film_id']
  end

  def save()
    sql = "INSERT INTO tickets (customer_id, film_id) VALUES ($1, $2) RETURNING id "
    values = [@customer_id, @film_id]
    ticket = SqlRunner.run(sql, values).first
    @id = ticket['id'].to_i
  end

  def update()
    sql = "UPDATE tickets SET (customer_id, film_id) = ($1, $2) where id = $3"
    values = [@customer_id, @film_id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE * from tickets where id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end
end
