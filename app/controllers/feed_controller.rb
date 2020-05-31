class FeedController < ApplicationController
  def feed
    unless session[:user_id]
      redirect_to login_login_path
      return
    end

    @posts = Post.all.order("created_at DESC")
  end

  def logout
    reset_session
    redirect_to home_index_path
  end
end
