class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController 
    def ldap
        # We only find ourselves here if the authentication to LDAP was successful.
        ldap_return = request.env["omniauth.auth"]["extra"]["raw_info"]
        #firstname = ldap_return.givenname[0].to_s
        #lastname = ldap_return.sn[0].to_s
        #displayname = ldap_return.displayname[0].to_s
        username = ldap_return.sAMAccountName[0].to_s
        email = ldap_return.mail[0].to_s

        if @user = User.find_by_userlogin(username)
            remember_me
            sign_in_and_redirect(:user, @user)
        else
            password = User.generate_random_password
            
            @user = User.create(#:name => "#{firstname} #{lastname}",
                                :userlogin => username,
                                :email => email,
                                :password => password,
                                :password_confirmation => password)
            remember_me
            sign_in_and_redirect(:user, @user)
        end
    end
    
    
    def remember_me
      if params[:user][:remember_me]
        @user.remember_me!
      else
         @user.forget_me!  
      end
    end
end