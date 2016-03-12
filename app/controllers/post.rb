get '/posts/new' do
   erb :'/posts/new'
end

post '/posts' do
  @post = User.find(session[:logged_in]).posts.new(title:params[:title], hyperlink:params[:hyperlink])
  #lets try to namespace params here
  if @post.save
    redirect '/'
  else
    "NAH"
    #error handling?
  end
end


get '/posts/:id' do
  @post = Post.find(params[:id])
erb :'/posts/show'
end
