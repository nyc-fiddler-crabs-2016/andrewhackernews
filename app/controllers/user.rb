get '/users/:id' do
  if logged_in? && current_user == User.find(params[:id])
    @user = User.find(session[:logged_in])
    erb :'/users/show'
  else
    @user = User.find(params[:id])
    erb :'/users/show'
  end
end


put '/users' do
  if logged_in? && current_user == User.find(params[:id])
    if params[:email]== ""
      current_user.update(about_me:params[:about_me])
    else
      current_user.update(email:params[:email], about_me:params[:about_me])
    end
  redirect "/users/#{current_user.id}"

else
  redirect "/users/#{current_user.id}"
end

end