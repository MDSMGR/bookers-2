Rails.application.routes.draw do
  devise_for :users
  resources :users ,only:[:edit, :index, :show, :update]
  root to: 'homes#top'
  get 'home/about'=> 'homes#about'
  
  resources :books, only: [:new, :create, :index, :show, :destroy, :edit, :update] do
    
    # get 'books/edit' => 'books#edit', as: 'edit_book'
    resources :book_comments, only: [:create, :destroy]
     resource :favorites, only: [:create, :destroy]
  end

end
