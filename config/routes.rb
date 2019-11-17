Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
 
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  devise_scope :user do
    authenticated do
      root :to => 'organizations#index', as: :authenticated_root
    end
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  resources :organizations  
  resources :flags
end
