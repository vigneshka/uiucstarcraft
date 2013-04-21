Csl::Application.routes.draw do
  
  root :to => "static#index"

  match "/home" => "static#index"
  match "/events" => "static#events"
  match "/ranking" => "static#ranking"

  resources :comments, :only => [:new, :create]
  
  match "/contact" => "comments#new"
  match "/admin" => "admin/posts#index"

  namespace :admin do
	  resources :posts
	end

end