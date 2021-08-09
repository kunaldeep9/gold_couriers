Rails.application.routes.draw do
  resources :courier_details
  devise_for :users
  get '/status/:id', to: 'courier_details#status_report'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
