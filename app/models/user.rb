class User < ActiveRecord::Base
   has_secure_password
   validates :email, presence: true, uniqueness: true 
   validates :password, presence: true, length: {minimum: 6, maximum: 20}
   validates :password_confirmation, presence: true

   def self.authenticate_with_credentials (email, password)
      user = User.find_by_email(email.strip.downcase)
      if user && user.authenticate(password)
        return user
      else 
        return nil
      end
   end

end
