class Chitter < Sinatra::Base

	post '/message' do
		user = current_user
    user.messages << Message.create(peep: params[:peep], user_id: session[:user_id])
    user.save
    redirect '/homepage'
  end

end