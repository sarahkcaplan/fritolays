get '/sessions/new' do
 erb :'sessions/new'
end

post '/sessions' do
 @user = User.authenticate(params[:email], params[:hashed_password])
 if @user
   login(@user)
   redirect '/users/:id'
 else
   @errors = ['Cannot find your account. Please create a new one.']
   erb :'sessions/new'
 end
end

delete '/sessions' do
 logout
 redirect '/channels'
end
