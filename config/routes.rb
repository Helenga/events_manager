Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	
	root 'events#index'
	
	resources :users, only: [:create, :new, :show]
	
	get 'login' => 'sessions#new'
	post 'login' => 'sessions#create'
	delete 'logout' => 'sessions#destroy'
	post 'save_event' => 'events#create'
	post 'save_attendee' => 'attendees#create'
	
	#resources :sessions, only: [:new, :create, :destroy]
end
