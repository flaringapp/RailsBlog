class FeedController < ApplicationController
  def feed
    user_id = session[:user_id]
    unless user_id
      redirect_to login_login_path
      return
    end

    @posts = Post.all.order("created_at DESC")

    user = User.find(user_id)
    @user_name = user.nickname
    @user_avatar = user.avatar
  end

  def logout
    reset_session
    redirect_to home_index_path
  end
end
