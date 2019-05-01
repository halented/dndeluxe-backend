Rails.application.routes.draw do
  resources :user_games
  resources :notes
  resources :games do
    resources :characters
  end
  resources :users do
    resources :characters
    post ':id/new-character', to: "characters#new"
  end

  post '/login', to: 'auth#create'
  post '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
