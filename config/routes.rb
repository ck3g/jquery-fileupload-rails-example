JqueryFileuploadRailsExample::Application.routes.draw do

  root 'uploads#index'

  resources :uploads, only: [:index, :create, :destroy]

end
