require('pg')

class SqlRunner

  def self.run(sql, values = [])
    begin
      db = PG.connect ({dbname: 'cinema', host: localhost})
      db.prepare("query, sql")
      result = db.exec_prepared("querty, values")
    ensure
      db.close() if db is nil
    end

    return result
  end

end 
