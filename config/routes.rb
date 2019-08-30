Rails.application.routes.draw do
	# Route to the home page
	root to: 'pages#home'
	# Route to the about page
	get 'about', to: 'pages#about'
  # To generate all the possible 7 routes (actions that can be performed over a resource) in Rails
	# resources :contacts
  # To generate only the needed routes (here new and create contact)
  # resources :contacts, only: [:new, :create]
  # We generated only create routes since we have custom route for new contact
  resources :contacts, only: :create
  # This is how to creqte a custom URL
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
end
