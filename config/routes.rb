CalApp::Application.routes.draw do
  root :to => 'calendars#show'

  resources :calendars, :only => :show
end