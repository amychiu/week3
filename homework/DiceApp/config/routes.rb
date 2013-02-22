DiceApp::Application.routes.draw do

	root :to => 'dice#index'
	
	get "/point=:point" => 'dice#again', :as => 'again'
	post "/dice" => 'dice#roll', :as => 'dice'

	
end
