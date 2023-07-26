Rails.application.routes.draw do
devise_for :users
resources :postulants
resources :offers do
 
  get 'home/index'
end 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "home#index"

end
