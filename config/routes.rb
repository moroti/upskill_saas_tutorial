Rails.application.routes.draw do
	# Route to the home page
	root to: 'pages#home'
	# Route to the about page
	get 'about', to: 'pages#about'
	resources :contacts
  # This is how to creqte a custom URL
  get 'contact-us', to: 'contacts#new'
end
