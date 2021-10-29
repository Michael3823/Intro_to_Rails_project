Rails.application.routes.draw do
  root 'home#index'
  resources :partypes, only: %i[index show]

  resources :champions, only: %i[index show] do
    collection do 
      get "search"
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
