class Post < ApplicationRecord
  def creator_name
    User.find(creator_id).nickname
  end
  def creator_image
    User.find(creator_id).image
  end
end
