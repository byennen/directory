MetalsDirectory::Application.routes.draw do

  get 'about', to: 'pages#about', as: 'about'
  get 'media-kit', to: 'pages#media_kit', as: 'media_kit'
  get 'associations', to: 'pages#associations', as: 'associations'
  get 'contact', to: 'pages#contact', as: 'contact'
  get 'privacy', to: 'pages#privacy', as: 'privacy'
  get 'terms', to: 'pages#terms', as: 'terms'

  root :to => "pages#home"

  devise_for :users, :controllers => {registrations: 'registrations', confirmations: 'confirmations'}
  resources :registration_steps
  resources :companies, only: [:index, :show]
  resources :users

  namespace :admin do
    resources :companies
    resources :categories
    resources :users
    root to: 'companies#index'
  end
end
