class User < ApplicationRecord
  DEFAULT_AVATAR = "user_deleted.png"

  has_one_attached :avatar

  def avatar_safe
    unless avatar.attached?
      return DEFAULT_AVATAR
    end

    avatar
  end
end
