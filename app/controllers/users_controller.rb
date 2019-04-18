class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

  if @user.save
    redirect_to root_path, flash[:notice] = "Account created successfully!"
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