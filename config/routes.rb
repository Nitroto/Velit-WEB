Rails.application.routes.draw do
  get 'partners/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  scope "(:locale)", locale: /en|bg/ do
    get 'pages/about'
    get 'pages/contacts'
    get 'pages/links'
    get 'pages/partners'
    get 'pages/useful'
    root :to => 'home#index'
  end

  get '/:locale' => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
