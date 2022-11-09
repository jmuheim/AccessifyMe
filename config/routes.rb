Rails.application.routes.draw do
  devise_for :users

  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root "welcome#index"

    resources :wcag_elements, path: :wcag
    resources :tools

    get "learn", to: "learn#index"
    scope "learn" do
      resources :virtues do
        resources :insights      
      end

      resources :faqs, path: :faq

      resources :videos do
        get 'transcript'
        get 'slides'
      end
    end

    get "hire", to: "hire#show"
    get "about", to: "about#show"
  end

  # Tiny-URL (shortcuts)
  get "video/:id", to: "videos#show"
  get "virtue/:id", to: "virtues#show"
  get "example/:id", to: "examples#show"
  get "win/:id", to: "wins#show"
  get "fail/:id", to: "fails#show"
  get "wcag/:id", to: "wcag#show" # TODO: Needs to work for IDs like `1.3.1`
end
