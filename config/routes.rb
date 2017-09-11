Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#home'
  get '/events', to: 'static_pages#events'
  get '/gallery', to: 'static_pages#gallery'
  get '/about_us', to: 'static_pages#about_us'
  get '/curriculum', to: 'static_pages#curriculum'
  get '/apply', to: 'static_pages#apply'

  resources :applics, only: [:index, :new, :create, :edit, :update, :show]
end
