Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  resources :contacts

  resources :contacts do
    resources :messages
  end
end
