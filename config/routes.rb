Rails.application.routes.draw do

  # Main route index
  root "welcome#index"
  # Redirect all routes to root route
  match '*path' => redirect('/'), via: :get

end
