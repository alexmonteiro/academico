# Uncomment and edit LDAP options
Rails.application.config.middleware.use OmniAuth::Strategies::LDAP,      
      #:title => "ldap",
      #:host => '127.0.0.1',
      #:base => 'OU=ifb, DC=ifb, DC=local', #Example:'OU=ifb, DC=ifb, DC=local',
      #:uid => 'sAMAccountName',
      #:port => 389,
      #:method => :plain,
      #:bind_dn => 'binduser@ifb.local',
      #:password => 'pasword'
