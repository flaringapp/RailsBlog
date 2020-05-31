class Post < ApplicationRecord
  has_one_attached :image

  def creator_name
    User.find(creator_id).nickname
  end
  def creator_image
    User.find(creator_id).avatar
  end

end
