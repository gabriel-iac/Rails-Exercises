Rails.application.routes.draw do
  get 'home/index'

  get 'users/index'

  get 'users/show'

  get 'users/create'

  get 'users/update'

  get 'users/delete'

  devise_for :users
  root to: "home#index"
end
