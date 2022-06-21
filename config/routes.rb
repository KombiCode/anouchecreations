Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#home"

  resources :contacts, only: [ :new, :create, :index ]
 
  scope controller: :pages do
    get 'kc-ac-yec-hed-mat', to: 'pages#dashboard', as: 'kc-ac-yec-hed-mat'
    end

  # sorcery
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  resources :users
  resources :sessions

end
