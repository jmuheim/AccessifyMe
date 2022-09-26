Rails.application.routes.draw do
  resources :wcag_elements, path: :wcag
  devise_for :users
  resources :requirements
  resources :tools
  resources :videos do
    get 'transcript'
    get 'slides'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "videos#index"
end
