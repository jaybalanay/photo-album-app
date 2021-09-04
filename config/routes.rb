Rails.application.routes.draw do
  resources :photos, except: [:index], only: [:create, :update, :destroy]
  resources :albums, only: [:index, :create, :update, :destroy]

  root to: 'albums#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
