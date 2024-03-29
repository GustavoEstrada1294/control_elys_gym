Rails.application.routes.draw do
  devise_for :users
  resources :clients
  resources :products
  resources :subscription_types
  resources :payments, except: [:destroy, :update , :edit] do
    collection do 
      get :expirations
    end

  end
 
  #get "/subscription_types", to: "subscription_types#index"

  get "/incomes", to: "incomes#index"

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "incomes#index"
end
