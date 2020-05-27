Rails.application.routes.draw do

  scope "/:locale", locale: /#{I18n.available_locales.join("|")}/ do
    resources :gossips do
      resources :comments
    end
    root 'gossips#index'
    devise_for :users, :controllers => { registrations: 'registrations' }
  end

  root to: redirect("/ru"), as: :redirected_root

end
