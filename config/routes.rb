Rails.application.routes.draw do

  devise_for :users

  post 'image/upload'
  delete 'image/delete'

  root 'posts#index'
  get 'posts', to: 'posts#all', as: :posts_all
  resources :posts, except: [:index]

  resources :posts do
    resources :comments
  end

  resources :comments do
    resources :comments
  end

  put 'users/change_avatar', to: 'users#update_avatar', as: 'user_avatar_edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
