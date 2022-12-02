Rails.application.routes.draw do
  root "home#index"


  devise_for :users
  resources :home do
    resources :comments
  end
end
