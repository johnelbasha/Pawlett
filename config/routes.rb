Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :services, only: [:index, :show]
  resources :orders, only: [:create, :show] do
    resources :payments, only: :new
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
