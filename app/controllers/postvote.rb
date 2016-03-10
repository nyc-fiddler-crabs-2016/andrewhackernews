post '/posts/:post_id/postvotes' do
  @post = Post.find(params[:post_id])
  if logged_in? && !@post.voted_on?(current_user.id)
  @postvote = @post.postvotes.new(user_id: current_user.id)
    if @postvote.save
     redirect '/'
    end
  else
    redirect '/'
  end
end

