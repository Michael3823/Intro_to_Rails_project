Rails.application.routes.draw do
  get 'champion_classes/index'
  get 'champion_classes/show'
  root 'home#index'
  resources :partypes, only: %i[index show]

  resources :champions, only: %i[index show] do
    collection do 
      get "search"
    end
  end
  
end
