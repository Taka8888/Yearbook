Rails.application.routes.draw do
  resources :comments
  resources :users
  resources :topics
  get 'posts' => 'post#index'
end
