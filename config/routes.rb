Rails.application.routes.draw do

  scope "/:locale", locale: /#{I18n.available_locales.join("|")}/ do
    devise_for :users, :controllers => { registrations: 'registrations' }
    resources :tweets
    root 'tweets#index'
  end

  root to: redirect("/ru"), as: :redirected_root

end
