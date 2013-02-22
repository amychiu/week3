Poker::Application.routes.draw do

	get "/poker" => 'poker#index', :as => 'pokers'
  	root :to => 'poker#index'
  
end
