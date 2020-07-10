Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'

  resources :ingredients, only: [:destroy]

  resources :cocktails do
    resources :ingredients, only: [:new, :create, :index, :show]
  end

  resources :cocktails do
    resources :doses, only: [:new, :create, :index, :show]
  end
end
