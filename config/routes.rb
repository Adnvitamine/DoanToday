Rails.application.routes.draw do

  resources :photos
  resources :comments
  devise_for :users

 
    resources :posts
    
    resources :users


  get 'about', to: 'home#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root :to => "home#index"
end
