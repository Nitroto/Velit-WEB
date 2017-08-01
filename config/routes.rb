Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  scope "(:locale)", locale: /en|bg/ do
    resources :news
    resources :partners
    get 'about', to: 'pages#about'
    get 'contacts', to: 'pages#contacts'
    get 'links', to: 'pages#links'
    get 'useful', to: 'pages#useful'
    root :to => 'home#index'
  end

  get '/:locale' => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
