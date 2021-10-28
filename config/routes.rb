Rails.application.routes.draw do
  root 'home#index'
  resources :champions, only: %i[index show]
  resources :partypes, only: %i[index show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
