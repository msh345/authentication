class User < ActiveRecord::Base

def self.authenticate(email, password)
    user = User.where(:email => email, :password => password)
    user.any? ? user.map! {|row| row.name}.join("") : nil
    # if email and password correspond to a valid user, return that user
    # otherwise, return nil
  end

end
