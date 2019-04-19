class SessionsController < ApplicationController
  def new
  end

  def create
    # convert email to lowercase to match email in db incase the user has capslock on
    user = User.find_by(email: params[:login][:email])
    # verify user exists in db and run the authenticate method to check if submitted password in form is correct
    if user && user.authenticate(params[:login][:password])
      # save the user in the cookie session
      session[:user_id] = user.id.to_s
      redirect_to root_path, notice: "You are logged in!"
    else
      flash.now.alert = "Incorrect email or password, try again."
      render :new
    end
  end

  def destroy
    # delete the user_id from the cookie session
    session.delete(:user_id)
    redirect_to login_path, notice: "You are logged out!"
  end
end
