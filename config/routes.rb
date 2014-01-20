Dynamic::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'
  devise_for :accounts

  resources :trainers

  scope :api do
    get "/trainers(.:format)" => "trainers#index"
    get "/trainers/:id(.:format)" => "trainers#show"
    get "/clients(.:format)" => "clients#index"
    get "/clients/:id(.:format)" => "clients#show"
    get "/workouts(.:format)" => "workouts#index"
    get "/workouts/:id(.:format)" => "workouts#show"
  end
end
