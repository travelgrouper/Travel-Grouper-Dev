Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '157820100932662', '1b212fea35d10344f5a037dd89cb6d5b', :scope => 'email,offline_access,user_location'
end