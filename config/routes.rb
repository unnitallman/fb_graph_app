FbModportal::Application.routes.draw do
  resources :fb_pages
  root :to => "fb_pages#index"
  match ':controller(/:action(/:id(.:format)))'
end
