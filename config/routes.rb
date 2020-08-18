Rails.application.routes.draw do
  get 'board/index'
  resources :board
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'board#index'
end
