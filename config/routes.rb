Csl::Application.routes.draw do
  
  root :to => "static#index"

  match "/home" => "static#index"
  match "/events" => "static#events"
  match "/members" => "static#members"

  resources :comments, :only => [:new, :create]
  resources :replays, :only => [:new, :create]
  
  match "/contact" => "comments#new"
  match "/upload" => "replays#new"
  match "/admin" => "admin/posts#index"

  namespace :admin do
	  resources :posts
	end

end