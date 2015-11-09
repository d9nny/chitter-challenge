class Chitter < Sinatra::Base

  post '/sessions' do
    user = User.authenticate(params[:username1], params[:password1])
    if user
      session[:user_id] = user.id
    else
      flash.next[:notice] = ['The email or password is incorrect']
    end
    redirect '/homepage'
  end

  delete '/sessions' do
    session.delete(:user_id)
    redirect '/homepage'
  end
  
end