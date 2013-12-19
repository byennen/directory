MetalsDirectory::Application.routes.draw do

  get 'about', to: 'pages#about', as: 'about'
  get 'media-kit', to: 'pages#media_kit', as: 'media_kit'
  get 'associations', to: 'pages#associations', as: 'associations'
  get 'contact', to: 'pages#contact', as: 'contact'
  get 'privacy', to: 'pages#privacy', as: 'privacy'
  get 'terms', to: 'pages#terms', as: 'terms'
  get 'sign-up-now', to: 'pages#start', as: 'start'

  resources :companies do
    resources :registration_steps, path: 'registration-steps'
    member do
      get :update_logo_package
    end
  end

  root :to => "pages#home"

  devise_for :users, :controllers => {registrations: 'registrations', confirmations: 'confirmations'}

  namespace :admin do
    resources :companies
    #resources :categories
    resources :orders
    resources :users
    root to: 'companies#index'
  end
end
