Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # devise_for :users, 
  #            controllers: {                                 
  #              sessions:           'users/sessions',                                                                             
  #              omniauth_callbacks: 'users/omniauth_callbacks'                                      
  #            }
        
  namespace :api do
    namespace :v1 do
      resources :categories
    end
  end
end
