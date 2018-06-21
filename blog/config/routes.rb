Rails.application.routes.draw do
  get 'home/index'

  get 'home/terms'
  get 'home/about'


# get 'contacts' => 'contacts#new'
# resource :contacts, only: [:create] 

	resources :articles
  resource :contacts, only: [:new, :create], path_names: {:new =>''}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end