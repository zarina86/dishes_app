Rails.application.routes.draw do
  root "dishes#index"
  resources :ingredients
  resources :dishes
  resources :dish_ingredients
end
