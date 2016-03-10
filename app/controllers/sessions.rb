get '/sessions/login' do
  erb :'/sessions/login'
end

post '/sessions' do
  #Change these when views are made
  @user= User.new(username:params[:username], password:params[:password])
  if @user.save
    @posts = Post.all
    erb :'/index'
  else
   @errors = @user.errors.messages
     @posts = Post.all
    erb :'/sessions/login'
  end

end

get '/sessions' do
  logged_in = User.find_by(username: params[:username])
    if logged_in.authenticate(params[:password])
      session[:logged_in] = logged_in.id
      redirect '/'
    else
      redirect '/'
    end
  end

  get '/sessions/logout' do
    session.clear
   @posts = Post.all
    redirect '/'
  end