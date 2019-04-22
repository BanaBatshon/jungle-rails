require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.new(
      email: "banabatshon@hotmail.com",
      name: "Bob",
      password: "bbbbbb",
      password_confirmation: "bbbbbb"
    )
  end
  describe 'Validations' do
    it "is valid with valid attributes" do
      expect(@user).to be_valid
    end
    it "is not valid if the password doesn't match the password_confirmation" do
      @user.password = "aaa"
      expect(@user).to_not be_valid
    end
    it "is not valid if the email is not unique" do
      @user_with_same_email = @user.dup
      @user_with_same_email.save
      @user.email = "banabatshon@hotmail.com"
      expect(@user).to_not be_valid
    end
    it "is not valid if the password is leass than 6 chars long" do
      @user.password = "bbb"
      expect(@user).to_not be_valid
    end
  end 
  describe '.authenticate_with_credentials' do
    it "saves the user to the session if the authentication was successful" do
      @user.save
      user= User.authenticate_with_credentials('banabatshon@hotmail.com', 'bbbbb')
      expect(@user).to_not be_nil
    end
  end
end