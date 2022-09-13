require 'pg'

def run_sql(sql, sql_params = [])
    db = PG.connect(ENV['DATABASE_URL'] || {dbname: 'food_truck'})
    results = db.exec_params(sql, sql_params)
    db.close
    results
end
#line 4 modifided 