def all_coffees
    run_sql("SELECT * FROM coffees")
end

def create_coffee(name, image_url, coffee_shots, ingredients, servings, hot_drink, dairy_free, steps)
    run_sql("INSERT INTO coffees(name, image_url, coffee_shots, ingredients, servings, hot_drink, dairy_free, steps ) VALUES($1, $2, $3, $4, $5, $6, $7, $8)", [name, image_url, coffee_shots, ingredients, servings, hot_drink, dairy_free, steps])
end

def get_coffee(id)
    run_sql("SELECT * FROM coffees WHERE id = $1", [id])[0]
end

def update_coffee(id, name, image_url, coffee_shots, ingredients, servings, hot_drink, dairy_free, steps)
    run_sql("UPDATE coffees SET name = $2, image_url = $3, coffee_shots = $4, ingredients = $5, servings = $6, hot_drink = $7, dairy_free = $8, steps = $9 WHERE id = $1", [id, name, image_url, coffee_shots, ingredients, servings, hot_drink, dairy_free, steps])
end

def delete_coffee(id)
    run_sql("DELETE FROM coffees WHERE id = $1", [id])
end