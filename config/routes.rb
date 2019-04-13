Rails.application.routes.draw do

  get 'todo/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'todo#home'

end
