get '/' do
  # Look in app/views/index.erb

  erb :index
end


post '/login' do
  # Look in app/views/index.erb
   "#{User.authenticate(params[:email], params[:password])}" 
  
  # erb :index
end
