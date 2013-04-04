# Uncomment and edit LDAP options
Rails.application.config.middleware.use OmniAuth::Strategies::LDAP,      
      :title => "ldap",
      :host => '10.6.0.2',
      :base => 'OU=ifb, DC=ifb, DC=local', #Example:'OU=ifb, DC=ifb, DC=local',
      :uid => 'sAMAccountName',
      :port => 389,
      :method => :plain,
      :bind_dn => 'binduser@ifb.local',
      :password => 'a1d57cxi'
