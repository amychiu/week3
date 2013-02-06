Poker::Application.routes.draw do

	get "/poker/new" => 'poker#new', :as => 'new_poker'

	get "/poker" => 'poker#index', :as => 'pokers'
	get "/poker/:id" => 'poker#show', :as => 'poker'
	post "/poker" => 'poker#create', :as => 'pokers'

	get "/poker/:id/edit" => 'poker#edit', :as => 'edit_poker'
	put "/poker/:id" => 'poker#update'

	delete "/poker/:id" => 'poker#destroy'
	
	root :to => 'poker#index'
	
end
