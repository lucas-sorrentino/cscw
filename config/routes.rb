Rails.application.routes.draw do
  resources :pessoas
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } do 
  	
  end
  devise_scope :user do
  authenticated :user do
    root 'pessoas#index', as: :authenticated_root
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
