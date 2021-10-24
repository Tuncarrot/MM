class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    #user = User.find_by(email: params[:session][:email].downcase) # OK, idk whats happening but... this is supposed to be the intended method, but it doesn't work
    user = User.find_by(params[:email])                            # This returns the user object
    if user && user.authenticate(params[:session][:password])      # Which in turn allows this to pass
      p "Auth Success"
      reset_session
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      log_in user
      redirect_to user
    else
      p params[:session][:password]
      p "Auth Failed"
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
  
end
