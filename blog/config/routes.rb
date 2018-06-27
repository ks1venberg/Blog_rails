Rails.application.routes.draw do

  devise_for :users
root to: "home#index"

  # get 'home/index'
  # get 'home/terms'
  # get 'home/about'

get 'terms' => 'pages#terms'
get 'about' => 'pages#about'
# get 'contacts' => 'contacts#new'
# resource :contacts, only: [:create] 

	resources :articles do
    resources :comments
  end
  
  resource :contacts, only: [:new, :create], path_names: {:new =>''}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end