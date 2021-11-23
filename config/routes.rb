Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :artists
  resources :albums
  resources :tracks do
    member do
      post :credits_list
    end
  end
end
