Rails.application.routes.draw do
  get 'home/index'
  devise_for :users 
  resources :users do
    member do
      get 'quote', to:"comments#quote", as:"quote"
    end
    
    resources :comments
  end
  resources :courses
  root to:"home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
