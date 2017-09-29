Rails.application.routes.draw do
  root 'top#new'

  resources :posts, only: [:index, :create, :edit, :show, :update, :destroy] do
    resources :comments, only: [:create, :edit, :update, :destroy]

  end

  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations',
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
