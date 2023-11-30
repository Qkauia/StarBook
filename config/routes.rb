Rails.application.routes.draw do
  
  
  resources :books
  resource :users, except: [ :destroy ] do
    collection do
      get :sign_in
    end
  end

  resource :sessions, only: [ :create , :destroy ]
  root "books#index"
end
