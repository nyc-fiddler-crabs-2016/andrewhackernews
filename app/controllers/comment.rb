post '/comments' do
  if logged_in?
  @post = Post.find(params[:post_id])
  @comment = @post.comments.new(body:params[:body], user_id: session[:logged_in])
    if @comment.save
     redirect "/posts/#{params[:post_id]}"
    else
    'error'
    end
  else
  "LOG IN"
  end
end