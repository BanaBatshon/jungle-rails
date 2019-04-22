class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
   parameters = user_params
   password_digest = BCrypt::Password.create parameters['password_confirmation']
   new_user_object = {name: parameters['name'], email: parameters['email'], password: parameters['password'], password_confirmation: parameters['password_confirmation'], password_digest: password_digest}
   @user = User.new(new_user_object)

  if @user.save
    session[:user_id] = @user.id
    redirect_to root_path, notice: "Account created successfully!"
  else
    flash.now.alert = "Error: coudn't create account. Please try again and make sure you are entering a valid email and password!"
    render :new
  end
end

private
  def user_params
    params.require(:user).permit(:name, :email, :password_confirmation)
  end
end