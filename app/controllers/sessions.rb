get '/sessions/login' do
  erb :'/sessions/login'
end

post '/sessions' do
  #Change these when views are made
  @user= User.new(username:params[:username], password:params[:password])
  if @user.save
    @posts = Post.all
    erb :'/index'
    #probably want redirect here
  else
   @errors = @user.errors.messages
     @posts = Post.all
     #login needs posts?
    erb :'/sessions/login'
  end

end

get '/sessions' do
  logged_in = User.find_by(username: params[:username])
    if logged_in.authenticate(params[:password])
      session[:logged_in] = logged_in.id
      #session[:user_id] so others know what this is
      @posts = Post.all
    erb :'/index'
    else
      @errors_login= "please enter a valide username or password"
     erb :'/sessions/login'
    end
  end

  get '/sessions/logout' do
    #delete request, need a form to do this on view
    session.clear
   @posts = Post.all
   #can't pass anything on a redirect
    redirect '/'
  end

  # error handling for log in