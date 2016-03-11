post '/comments/:comment_id/commentvotes' do
  @comment = Comment.find(params[:comment_id])
  if logged_in? && !@comment.voted_on?(current_user.id)
  @commentvote = @comment.commentvotes.new(user_id: current_user.id)
    if @commentvote.save
     redirect '/'
    end
  else
    redirect '/'
  end
end

