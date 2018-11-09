Rails.application.routes.draw do
  resources :givings, only:[:show]
  resources :adoptions, only:[:show]
  resources :pets
  resources :stores
  resources :users
  root :to => "stores#index"
  get 'sessions/new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/storepets' => 'pets#pet'
  # get '/dogs' => 'pets#dog'
  # get '/rabbits' => 'pets#rabbit'
  # get '/hamsters' => 'pets#hamster'

  post '/adoption' => 'pets#adoption', as: "adoption_pet"

  get '/giving_new' => 'pets#giving_new', as: "new_giving"
  get '/giving_existing' => 'pets#giving_existing', as: "new_existing"

  post '/change_status' => 'pets#change_status', as: "change_status"

  get '/tips' => 'stores#tips', as: "tips"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
