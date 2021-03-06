Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'top#new'

  resources :posts, only: [:index, :create, :edit, :show, :update, :destroy] do
 end

  resources :topics, only:[:create, :edit,  :update, :index, :destroy]do
    resources :comments, only: [:create, :edit, :update, :destroy]
    resources :likes , only: [:create, :destroy]

  end

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks',
  }

  resources :users, only: [:index, :show]

  resources :conversations, only: :create do
    resources :messages, only: [:index, :create]

  end

  resources :relationships, only: [:create, :destroy]

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
