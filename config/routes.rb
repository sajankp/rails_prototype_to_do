Rails.application.routes.draw do
  resources :todo, except: [:show, :edit, :new]
  match 'delete_all_completed', to: 'todo#delete_all_completed', via: [:delete]
  match 'mark_all_completed', to: 'todo#mark_all_completed', via: [:post]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'todo#index'

end
