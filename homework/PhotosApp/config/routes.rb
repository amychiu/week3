PhotosApp::Application.routes.draw do


  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'


	get "/photo/new" => 'photos#new', :as => 'new_photo'

	get "/photos" => 'photos#index', :as => 'photos'
	get "/photos/:id" => 'photos#show', :as => 'photo'
	post "/photos" => 'photos#create', :as => 'photos'

	get "/photos/:id/edit" => 'photos#edit', :as => 'edit_photo'
	put "/photos/:id" => 'photos#update'

	delete "/photos/:id" => 'photos#destroy'
	
	root :to => 'photos#index'
	
end
