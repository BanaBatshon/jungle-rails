class User < ActiveRecord::Base
   has_secure_password
   validates :email, presence: true, uniqueness: true
   validates :password, presence: true
   validates :password_confirmation, presence: true

   def self.authenticate_with_credentials (email, password)
      user = User.find_by_email(email)
      if user && user.authenticate(password)
        return user
      else 
        return nil
      end
   end

end
