DiceApp::Application.routes.draw do
	

	get "/dice" => 'dice#index', :as => 'dices'
	#get "/dice/:id" => 'dice#show', :as => 'dice'
	
	post "/dice" => 'dice#create', :as => 'dice'
	
	get "/dice/roll" => 'dice#roll', :as => 'dice'
	get "/dice/roll?point=:point" => 'dice#rollagain', :as => 'rollagain'

	#get "/dice/new" => 'dice#new', :as => 'new_dice'

	#get "/dice/:id/edit" => 'dice#edit', :as => 'edit_dice'
	#put "/dice/:id" => 'dice#update'

	#delete "/dice/:id" => 'dice#destroy'
	
	root :to => 'dice#index'
end
