class Chitter < Sinatra::Base

get '/users/register' do
		@user = User.new
		erb :'users/register'
	end

	post '/users' do
		@user = User.new(name: params[:name], username: params[:username],
						email: params[:email], password: params[:password], 
						password_confirmation: params[:password_confirmation])
		if @user.save
			session[:user_id] = @user.id
			redirect '/homepage'
		else
			flash.now[:errors] = @user.errors.full_messages
			erb :'users/register'
		end
	end

end