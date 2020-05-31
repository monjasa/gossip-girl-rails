Rails.application.routes.draw do

  scope "/:locale", locale: /#{I18n.available_locales.join("|")}/ do
    resources :tags
    resources :gossips do
      resources :comments
    end
    root 'gossips#index'
    devise_for :users, controllers: { registrations: 'registrations', confirmations: 'users/confirmations' }
  end

  root to: redirect("/ru"), as: :redirected_root
end
