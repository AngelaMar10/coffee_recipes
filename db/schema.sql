CREATE DATABASE coffees_app;
\c coffees_app

CREATE TABLE coffees (
    id SERIAL PRIMARY KEY,
    name TEXT,
    image_url TEXT,
    coffee_shots REAL,
    ingredients TEXT,
    servings INTEGER,
    hot_drink TEXT,
    dairy_free TEXT,
    steps TEXT
);

INSERT INTO coffees (name, image_url, coffee_shots, ingredients, servings, hot_drink, dairy_free, steps)
VALUES('Cinnamon Coffe', 'https://images.unsplash.com/photo-1494314671902-399b18174975?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80', 1.5, '200ml of hot water, 2 tsps of honey, 1 cinnamon stick', 2, 'Yes', 'Yes', 'Make the coffee shot, pour the hot water and add the honey with the cinnamon stick and stir well, let the coffee rest for a minute and take out the cinnamon stick and serve');

INSERT INTO coffees (name, image_url, coffee_shots, ingredients, servings, hot_drink, dairy_free, steps)
VALUES('Ice-cream Frozen Coffe', 'https://images.unsplash.com/photo-1606913170721-12f535425f59?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80', 2, '100ml of milk, 1 tsps of coconut syrup, 1 scoop of Vanilla ice-cream ', 2, 'No', 'No', 'Blend the coffee shoots, milk, and coconut syrup until smooth, pour into serving glass and add the scoop of ice-cream on the top, add chocolate syrup for extra sweetness');

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT
);

ALTER TABLE users ADD COLUMN password_digest TEXT;

ALTER TABLE coffees ADD COLUMN owner TEXT;
