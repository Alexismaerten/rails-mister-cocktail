Rails.application.routes.draw do

 resources :cocktails, only:[:create, :index, :new, :show] do
 resources :doses, only:[:new, :create]
 resources :reviews, only: [:new, :create]
end
resources :doses, only:[:destroy]



root to: "cocktails#index"
end
