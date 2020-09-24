Rails.application.routes.draw do
  resources :boards do
    resources :lists do
      resources :tickets, only: [:new, :create]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'boards#index'
end
