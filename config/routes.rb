Rails.application.routes.draw do
  devise_for :users
  root to: "sabakatu#index"
end
