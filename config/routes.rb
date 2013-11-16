MongoForms::Application.routes.draw do
  
  resources :extended_families
  root "extended_families#index"
end
