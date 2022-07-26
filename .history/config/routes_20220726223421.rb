Rails.application.routes.draw do
  resources :activities, only: [:index, :destroy ]
  resources :signups, only: [:create, :show]
  resources :campers, only: [:create, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
