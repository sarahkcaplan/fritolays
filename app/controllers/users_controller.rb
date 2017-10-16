get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    login(@user)
    redirect('/locations')
  else
    @errors = @user.errors.full_message
    erb :'user/new'
  end
end
