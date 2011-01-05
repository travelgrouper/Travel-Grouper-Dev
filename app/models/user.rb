class User < ActiveRecord::Base
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["user_info"]["name"]
      user.email = auth["user_info"]["email"]
      user.location = auth["user_info"]["location"]
      user.image = auth["user_info"]["image"]
    end
  end
  def self.check_for_updates(auth)
    if user.email !== auth["user_info"]["email"]
      user.email = auth["user_info"]["email"]
    end
  end
end
