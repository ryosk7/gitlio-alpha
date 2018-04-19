Rails.application.routes.draw do
  root "welcome#index"
  get 'auth/github', as: :github_login
  get '/auth/github/callback', to: 'sessions#callback'
  delete '/logout', as: :github_logout, to: 'sessions#destroy'
  resources :users, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
