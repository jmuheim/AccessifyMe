Rails.application.routes.draw do
  resources :videos do
    get 'transcript'
    get 'slides'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
