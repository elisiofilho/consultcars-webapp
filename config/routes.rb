Rails.application.routes.draw do
  get "/" => "makers#index"
  get "/makers/search_models" => "makers#search_models"
  get "/models" => "models#index"
end