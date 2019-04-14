Rails.application.routes.draw do
  resources :todo
  get 'todo/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'todo#index'

end
