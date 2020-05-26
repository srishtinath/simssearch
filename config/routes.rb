Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :rooms, :furnitures, :houses
  resources :room_furnitures, only: [:new, :create, :edit, :update]

  get '/', to: "home#welcome", as: 'home'
  get '/profile', to: "home#profile", as: 'profile'
end
