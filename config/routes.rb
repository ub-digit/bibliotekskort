Rails.application.routes.draw do

  namespace :api, :defaults => {:format => :json} do
    post 'patrons', to: 'patrons#create'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount_ember_app :frontend, to: "/"

end
