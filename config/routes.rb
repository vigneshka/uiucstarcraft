Csl::Application.routes.draw do
  
  root :to => "static#index"

  match "/home" => "static#index"
  match "/events" => "static#events"
  match "/join" => "static#join"
  match "/members" => "static#members"


  match "/admin" => "admin/posts#index"

  namespace :admin do
	  resources :posts
	end

end