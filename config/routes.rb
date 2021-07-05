Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  resources :post_image, only:[:new, :create, :index, :show, :destroy]
  # onlyをつけることによって限定してルーティングをしてくれる

end
