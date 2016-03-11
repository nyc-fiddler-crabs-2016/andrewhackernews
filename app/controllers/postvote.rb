post '/posts/:post_id/postvotes' do
  @post = Post.find(params[:post_id])
  if logged_in? && !@post.voted_on?(current_user.id)
  @postvote = @post.postvotes.new(user_id: current_user.id)
    if @postvote.save
     
     if request.xhr?
       status 200 #(and have .done method increment the vote count)
     else
      redirect '/' #this would be if not ajax
      end
    end
  else
    #error handling
    redirect '/'
  end
end

