Stations::Application.routes.draw do
  resources :stages

  resources :activities

  resources :stations

  root :to => "activities#index"

  match 'stop_activity/:id' => 'activities#stop', :as => :stop_activity
end
