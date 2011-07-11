FbModportal::Application.routes.draw do
  resources :fb_pages do
    collection do
      get :fb_auth_response
    end
  end

  root :to => "fb_pages#index"
  match ':controller(/:action(/:id(.:format)))'
end
