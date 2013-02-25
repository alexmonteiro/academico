class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :omniauthable, :registerable,  :recoverable, :rememberable, :trackable, :validatable,
         :omniauth_providers => [:ldap]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :userlogin, :password, :password_confirmation, :remember_me, :email
  # attr_accessible :title, :body

  def self.generate_random_password
    Digest::SHA1.hexdigest(Time.now.to_s)
  end  
end
