class PostController < ApplicationController
  TEST_IMAGE = "https://www.mydiscprofile.com/_images/homepage-free-personality-test.png"
  TEST_CREATOR = 1

  def post
  end

  def add
    # upload image to cloudinary
    # @image = Cloudinary::Uploader.upload(params[:media])
    # create a new post object and save to db
    @post = Post.new(
        {
            :image => TEST_IMAGE,
            :message => params[:message],
            :creator_id => TEST_CREATOR
        }
    )

    @post.save

    # trigger an event with pusher
    redirect_to('/feed/feed')
  end
end
