Rails.application.routes.draw do
  devise_for :users
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
   namespace :api do
    get "/records" => "records#index"
    post "/records" => "records#create"
    get "/records/:id" => "records#show"
    patch "/records/:id" => "records#update"
    delete "/records/:id" => "records#destroy"
  end
end

