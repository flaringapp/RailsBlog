class Post < ApplicationRecord
  has_one_attached :image

  def creator_name
    user = User.find(creator_id)

    unless user
      return "Deleted user"
    end

    user.nickname
  end
  def creator_image
    user = User.find(creator_id)

    unless user
      return User::DEFAULT_AVATAR
    end

    user.avatar_safe
  end

end
