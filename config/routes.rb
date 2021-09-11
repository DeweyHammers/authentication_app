Rails.application.routes.draw do
  resource :sessions, only: [:create]
  resource :registrations, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_id, to: "seeions#logged_in"
  root to: "static#home"
end
