Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'blogs#top'
 resources :blogs do
    resources :comments, only: [:create]
  end
 get   'users/:id'   =>  'users#show'  
end
