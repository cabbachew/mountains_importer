Rails.application.routes.draw do
  resources :mountains do
    collection do
      post :import
    end
  end
  root 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
