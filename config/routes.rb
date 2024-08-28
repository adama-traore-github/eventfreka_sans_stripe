Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


  root to: 'home#index'

  devise_for :users

  resources :events, only: [:index, :show, :new, :create, :edit, :update] do
    member do
      get 'join'
    end
  end

  get 'profile', to: 'profiles#show', as: 'profile'
end
