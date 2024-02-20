Rails.application.routes.draw do
  root 'home#index'
  #RESTful routes
  resources :employees   #This will help the generate automatically the operations like CRUD and along with that GET, POST, PUT, PATCH etc.
end
