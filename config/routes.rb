Rails.application.routes.draw do

  # Main route index
  root "welcome#index"

  namespace :api, defaults: { format: "json" } do
    namespace :v1 do
    	post "/users/login_user" => "users#login_user"
    	get "/request_vacations/get_all_requests" => "request_vacations#index"
    	post "/request_vacations/update_request_vacation" => "request_vacations#update_request_vacation"
    end
  end

end
