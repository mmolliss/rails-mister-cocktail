Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :ingredients, only: [:destroy]

    resources :cocktails do
      resources :ingredients, only: [:new, :create, :index]
    end
end
