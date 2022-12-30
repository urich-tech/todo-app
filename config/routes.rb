Rails.application.routes.draw do
  
  resources :lists do
     resources :list_items 
  end

  get 'pages/home'
  get 'pages/contact'
  get 'pages/show'
 
  devise_for :users, controllers: {
  	sessions: 'users/sessions',
  	registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/members_details' => 'members#index'

	devise_scope :user do  
	   get '/users/sign_out' => 'devise/sessions#destroy'     
	end

  
  # Defines the root path route ("/")
  # root "articles#index"
  root 'pages#home'
end
