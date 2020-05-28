Rails.application.routes.draw do

  resources :tags
  scope "/:locale", locale: /#{I18n.available_locales.join("|")}/ do
    resources :tags
    resources :gossips do
      resources :comments
    end
    root 'gossips#index'
    devise_for :users, :controllers => { registrations: 'registrations' }
  end

  root to: redirect("/ru"), as: :redirected_root
end
