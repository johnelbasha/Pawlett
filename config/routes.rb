Rails.application.routes.draw do
  get 'render/index'
  devise_for :users
  root to: 'pages#home'
  # root 'render#home'
  resources :services, only: [:index, :show]
  resources :orders, only: [:create, :show] do
    resources :payments, only: :new
  end

  mount StripeEvent::Engine, at: '/stripe-webhooks'

  resources :queries, only: :create

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/covid', to: 'pages#covid'

end
