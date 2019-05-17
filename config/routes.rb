Rails.application.routes.draw do

  post "wokshops/add_person"
  get "workshops/search_person"

  get "workshops/generate_xl_sheet"
  post "workshops/create_xl"

 
  resources :workshops
 
  resources :users
  root :to => 'home#index'
  resources :registrations

   get 'prints/registration_card_print'
   get 'prints/income_certificate_print'
   get 'prints/community_certificate_print'
   get 'prints/disability_certificate_print'
  # post 'prints/search_person_details'
   get 'print_preview/registration_card_print'
   get 'print_preview/income_certificate_print'
   get 'print_preview/community_certificate_print'
   get 'print_preview/disability_certificate_print'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
 
end
