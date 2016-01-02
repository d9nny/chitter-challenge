ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require './app/data_mapper_setup'
require 'bcrypt'
require 'sinatra/flash'
require_relative 'helpers'
require_relative 'controllers/messages_controller'
require_relative 'controllers/user_controller'
require_relative 'controllers/session_controller'
require_relative 'controllers/application_controller'

class Chitter < Sinatra::Base

  run! if app_file == $0
end