Rails.application.routes.draw do
  get 'contacts/index'
  get '/events' , to: 'events#index'
  get '/contacts' , to: 'contacts#index'
  get '/galleries' , to: 'galleries#index'
  get '/center_interesings', to: 'center_interesings#index'
  resources :images
  devise_for :users
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  namespace :admin do
  	root to: 'pages#index'
    resources :events
    resources :centros
    resources :images
  end
end
