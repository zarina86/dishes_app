Rails.application.routes.draw do
  root "ingredients#index"
  resources :ingredients
  resources :dishes
  resources :dish_ingredients
end
