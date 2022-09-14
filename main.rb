require 'sinatra'
require 'bcrypt'
require './db/db'

enable :sessions

require './controllers/coffees_app_controller'
require './controllers/users_controller'
require './controllers/sessions_controller'

require './helpers/sessions_helper'




