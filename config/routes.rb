Rails.application.routes.draw do
  get '/events' , to: 'events#index'
  get '/center_interesings', to: 'center_interesings#index'
  devise_for :users
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  namespace :admin do
  	root to: 'pages#index'
    resources :events
  end
end
