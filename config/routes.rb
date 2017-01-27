Rails.application.routes.draw do
  	devise_for :users
	resources :medicines
	root 'medicines#index'
end
