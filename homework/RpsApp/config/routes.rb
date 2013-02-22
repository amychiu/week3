Rps::Application.routes.draw do

	get "/" => 'rps#index', :as => 'rps'
	
	get "/choose=:name" => 'rps#choose', :as => 'choose_rps'

	root :to => 'rps#index'
end
