require 'sinatra'
require '.db/db'

require './controllers/coffees_app_controller'
require './controllers/user_controller'

get '/' do
  erb :index
end





