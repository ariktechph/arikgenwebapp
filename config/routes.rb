Rails.application.routes.draw do
  resources :devicedetails
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'home/about'
  get 'home/contactus'
end
