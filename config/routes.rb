Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root 'home#top'
  get 'home/about'
  resources :users, only:[:index, :show, :edit, :update]
  resources :books, only:[:index, :show, :create, :destroy, :edit, :update] do
  resources :book_comments, only:[:create, :destroy]
  resource :favorites, only:[:create, :destroy]
  
  end
  
end
