class User < ActiveRecord::Base

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["user_info"]["name"]
      user.email = auth["user_info"]["email"]
      user.location = auth["user_info"]["location"]
      user.image = auth["user_info"]["image"]
      user.facebook_hash = auth["extra"]["user_hash"].inspect
    end
  end
end
