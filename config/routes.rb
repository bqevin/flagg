Rails.application.routes.draw do
  # devise_for :users
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  devise_scope :user do
    # get '/users/sign_out' => 'devise/sessions#destroy' 
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
