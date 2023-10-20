Rails.application.routes.draw do
  root 'sessions#new'
  post 'sessions/create'
  delete 'sessions/destroy'
end