Rails.application.routes.draw do
  devise_for :users

  root "welcome#index"

  resources :wcag_elements, path: :wcag
  resources :requirements
  resources :tools

  get "learn", to: "learn#index"
  scope "learn" do
    resources :virtues

    resources :videos do
      get 'transcript'
      get 'slides'
    end
  end
  get "video/:id", to: "videos#show"
  get "virtue/:id", to: "virtues#show"

  get "hire", to: "hire#index"
end
