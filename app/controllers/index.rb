enable :sessions

get '/' do
  session.clear
  erb :index
end

get '/logout' do
  redirect to('/')  
end

get '/:user_name' do
  erb :profile
end

post '/login' do
   @user_name = User.authenticate(params[:email], params[:password])
   session[:user_name] = @user_name
   if @user_name == nil
    redirect to('/')
  else
    redirect to("/#{@user_name}")
  end
end

post '/create' do 
  User.create(params)
  session[:user_name]= params[:name]
  redirect to("/#{params[:name]}")
end