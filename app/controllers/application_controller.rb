class Chitter < Sinatra::Base

  register Sinatra::Flash
	enable :sessions
	set :sessions_secret,'super secret'
	use Rack::MethodOverride
	helpers Helpers

	set :views, proc { File.join(root, "../views") }

	get '/' do
		redirect '/homepage'
	end

  get '/homepage' do
		@messages = Message.all
		@users = User.all
		erb :'messages/homepage'
	end

end