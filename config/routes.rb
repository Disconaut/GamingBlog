Rails.application.routes.draw do
  root  'blog#index'
  get '/posts', to: 'blog#posts'
  get '/post', to: 'blog#post'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
