class ClearFeed < ActiveRecord::Migration[6.0]
  def change
    Post.destroy_all
  end
end
