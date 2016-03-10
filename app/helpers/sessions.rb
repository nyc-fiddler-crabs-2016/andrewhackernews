helpers do
  def logged_in?
    !!session[:logged_in]
  end

  # def is_this_me?
  #   User.find(params[:id]) == User.find(session[:logged_in])
  # end
# Not smart to include params in a general helper method

  def current_user
    User.find(session[:logged_in])
  end

  def my_username
    User.find(session[:logged_in]).username
  end
end

