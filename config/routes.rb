Mirror::Application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config

  resource :checkout

  root :to => 'welcome#index'
end
