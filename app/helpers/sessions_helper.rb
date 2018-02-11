module SessionsHelper

  #log in user
  def log_in(user)
  	session[:user_id] = user.id
  end

  def log_out
  	session.delete(:user_id)
  	@current_user = nil
  end

  #return current logged-in user
  def current_user
  	@current_user ||= User.find_by(id: session[:user_id])
  end

  #check login status
  def logged_in?
  	!current_user.nil?
  end
end
