Rails.application.routes.draw do
  get 'post/post'
  post 'post/add'

  get 'feed/feed'

  get 'login/login'

  get 'home/index'

  root 'home#index'
end
