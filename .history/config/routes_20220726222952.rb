Rails.application.routes.draw do
  resources :activities, only: [:show, :index, :destroy, ]
  resources :signups, only: [:]
  resources :campers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
