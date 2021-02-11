Rails.application.routes.draw do
  namespace :api, :defaults => {:format => :json} do
    post 'patrons', to: 'patrons#create'
    get 'message_prefs', to: 'message_prefs#index'
    get 'category_codes', to: 'category_codes#index'
  end
end
