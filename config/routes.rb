CalApp::Application.routes.draw do

  root :to => 'calendars#show'

  match "calendar/:month", :to => 'calendars#show', :as => 'calendar'

end