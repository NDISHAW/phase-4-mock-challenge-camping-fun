Rails.application.routes.draw do
  resources :activities, only: [:show,]
  resources :signups
  resources :campers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
