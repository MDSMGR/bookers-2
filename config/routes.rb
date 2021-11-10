Rails.application.routes.draw do
  devise_for :users
  resources :users ,only:[:edit, :index, :show, :update]
  root to: 'homes#top'
  get 'home/about'=> 'homes#about'
  resources :books

end
