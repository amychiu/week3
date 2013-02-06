DiceApp::Application.routes.draw do
	

	get "/dice" => 'dice#index', :as => 'dices'
	post "/dice" => 'dice#create', :as => 'dice'
	
	get "/dice/roll" => 'dice#roll', :as => 'dice'
	get "/dice/roll?point=:point" => 'dice#rollagain', :as => 'rollagain'

	
	root :to => 'dice#index'
end
