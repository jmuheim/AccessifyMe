Rails.application.routes.draw do
  devise_for :users

  root "welcome#index"

  resources :wcag_elements, path: :wcag
  resources :tools

  get "learn", to: "learn#index"
  scope "learn" do
    resources :virtues
    resources :insights
    resources :faqs, path: :faq

    resources :videos do
      get 'transcript'
      get 'slides'
    end
  end
  get "video/:id", to: "videos#show"
  get "virtue/:id", to: "virtues#show"

  get "hire", to: "hire#show"
  get "about", to: "about#show"
end
