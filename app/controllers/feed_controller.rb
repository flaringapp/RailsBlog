class FeedController < ApplicationController
  def feed
    @posts = Post.all.order("created_at DESC")
  end
end
