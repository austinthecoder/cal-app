CalApp::Application.routes.draw do
  root :to => redirect("/calendars/#{Date.today.year}-#{Date.today.month}")

  resources :calendars, :only => :show
end