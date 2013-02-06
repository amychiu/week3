RpsApp::Application.routes.draw do
	get "/rps/new" => 'rps#new', :as => 'new_rps'

	get "/rps" => 'rps#index', :as => 'rps'
	
	get "/rps/rps?choose=:name" => 'rps#choose', :as => 'choose_rps'
	get "/rps/:id" => 'rps#show', :as => 'rps'
	

	
	post "/rps" => 'rps#create', :as => 'rps'

	get "/rps/:id/edit" => 'rps#edit', :as => 'edit_rps'
	put "/rps/:id" => 'rps#update'

	delete "/rps/:id" => 'rps#destroy'
	
	root :to => 'rps#index'
end
