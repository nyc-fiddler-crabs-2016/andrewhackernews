get '/' do
  @posts = Post.all
  erb :'/index'
  # redirect '/posts'
end