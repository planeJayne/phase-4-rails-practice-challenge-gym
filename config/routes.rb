Rails.application.routes.draw do

  resources :gym, only: [:index, :show]

  get "/gym", to: "gym#index"
  post "/membership/new", to: "membership#create_member"
  # get "/gym", to: "gym"
end
