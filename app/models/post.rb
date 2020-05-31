class Post < ApplicationRecord
  attr_reader :creator, :likes, :likes_count, :last_like_user

  has_one_attached :image

  def init
    @creator = User.find(creator_id)

    @likes = Like.where(post_id: self.id)
    @likes_count = likes.length

    if likes_count == 0
      @last_like_user = nil
    else
      @last_like_user = User.find(likes[likes_count - 1].user_id)
    end
  end

  def creator_name
    unless creator
      return "Deleted user"
    end

    creator.nickname
  end

  def creator_image
    unless creator
      return User::DEFAULT_AVATAR
    end

    creator.avatar_safe
  end

  def like_image(user_id)
    if likes.find { |like| like.user_id == user_id }
      ActionController::Base.helpers.asset_path('like_filled.svg', type: "images")
    else
      ActionController::Base.helpers.asset_path('like_border.svg')
    end
  end

  def format_likes_count
    if last_like_user
      if likes_count > 1
        "#{last_like_user.nickname} and #{likes_count - 1} more"
      else
        "#{last_like_user.nickname}"
      end
    else
      "No likes yet"
    end
  end
end
