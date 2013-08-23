MetalsDirectory::Application.routes.draw do

  get 'about', to: 'pages#about', as: 'about'
  get 'media-kit', to: 'pages#media_kit', as: 'media_kit'
  get 'associations', to: 'pages#associations', as: 'associations'
  get 'contact', to: 'pages#contact', as: 'contact'

  root :to => "home#index"
  devise_for :users, :controllers => {registrations: 'registrations', confirmations: 'confirmations'}
  resources :registration_steps
  #resources :users

  namespace :admin do
    root to: 'dashboard#index'
  end
end