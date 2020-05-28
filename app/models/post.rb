class Post < ApplicationRecord
  has_one_attached :image

  def creator_name
    User.find(creator_id).nickname
  end
  def creator_image
    User.find(creator_id).image
  end

  def acceptable_image
    nil unless image.attached?
  end
end
