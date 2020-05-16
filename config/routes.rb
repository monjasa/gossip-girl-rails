Rails.application.routes.draw do

  scope (":locale"), locale: /#{I18n.available_locales.join("|")}/ do
    devise_for :users
    resources :tweets
    root 'tweets#index'
  end

end
