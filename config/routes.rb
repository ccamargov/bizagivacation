Rails.application.routes.draw do

  # Main route index
  root "welcome#index"
  # Redirect all routes to root route
  match '*path' => redirect('/'), via: :get

  namespace :api, defaults: { format: "json" } do
    namespace :v1 do
    	post "/users/login_user" => "users#login_user"
    end
  end

end
