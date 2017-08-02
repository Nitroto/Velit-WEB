Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount ActiveAdmin::Tinymce::Engine => '/', as: 'admin_editor'

  scope "(:locale)", locale: /en|bg/ do
    resources :partners
    get 'contact', to: 'messages#new', as: 'contact'
    post 'contact', to: 'messages#create'
    get 'news', to: 'news#index'
    get ':id/news', to: 'news#show'
    get 'about', to: 'pages#about'
    get 'contacts', to: 'pages#contacts'
    get 'links', to: 'pages#links'
    get 'useful', to: 'pages#useful'
    root :to => 'home#index'
  end

  get '/:locale' => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
