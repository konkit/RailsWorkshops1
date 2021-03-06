Rails.application.routes.draw do
  resources :categories do
    resources :products do
      resources :reviews
    end
  end

  resources :profiles, only: [:index, :show]

  root 'categories#index'

  devise_for :user, controllers: { registrations: 'registrations'}
end
