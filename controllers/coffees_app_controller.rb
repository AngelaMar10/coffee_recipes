require './models/coffee_app'

get '/coffees/recipes' do
    coffees = all_coffees()

    erb :'coffees/recipes', locals: {
        coffees: coffees
    }
end

get '/' do
    # coffees = all_coffees()
    owner_id = session['user_id']
    logged_coffees = coffee_owner(owner_id)

    erb :'coffees/index', locals: {
    # coffees: coffees
        coffees: logged_coffees
    }
end

get '/coffees/new' do
    erb :'coffees/new'
end

post '/coffees' do
    name = params['name']
    image_url = params['image_url']
    coffee_shots = params['coffee_shots']
    ingredients = params['ingredients']
    servings = params['servings']
    hot_drink = params['hot_drink']
    dairy_free = params['dairy_free']
    steps = params['steps']
    owner_id = session['user_id']
    
    create_coffee(name, image_url, coffee_shots, ingredients, servings, hot_drink, dairy_free, steps, owner_id)

    redirect '/'
end

get '/coffees/:id/edit' do
    id = params['id']
    coffee = get_coffee(id)
  
    erb :'coffees/edit', locals: {
      coffee: coffee
    }
  end

put '/coffees/:id' do
    id = params['id']
    name = params['name']
    image_url = params['image_url']
    coffee_shots = params['coffee_shots']
    ingredients = params['ingredients']
    servings = params['servings']
    hot_drink = params['hot_drink']
    dairy_free = params['dairy_free']
    steps = params['steps']

    update_coffee(id,name, image_url, coffee_shots, ingredients, servings, hot_drink, dairy_free, steps)
    redirect '/'
end

delete '/coffees/:id' do
    id = params['id']
    
    delete_coffee(id)
    redirect '/'
end