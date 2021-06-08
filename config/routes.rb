Rails.application.routes.draw do
  devise_for :users
  root to: "sabakatus#index"
  resources :users, only:[:show]
  resources :profiles, only:[:new, :create, :edit, :update]
end
