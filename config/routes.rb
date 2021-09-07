Rails.application.routes.draw do
  devise_for :users
  use_doorkeeper
  # root to: 'dashboard#index'
  resources :dashboard
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/oauth/me' => 'doorkeeper/me#show'
end
