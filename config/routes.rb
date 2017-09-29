Rails.application.routes.draw do
  resources :notifications
  resources :relationships
  resources :messages
  resources :conversations
  devise_for :users
  resources :comments
  get 'posts' => 'post#index'

  root 'top#index'

    if Rails.env.development?
       mount LetterOpenerWeb::Engine, at: "/letter_opener"
    end
end
