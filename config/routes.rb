Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index', as: 'home'

  get  'about' => 'pages#about'

  resources :posts do 
    resources :comments
  end
end
