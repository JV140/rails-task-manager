Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get 'tasks', to: 'tasks#index'  # list all
get 'tasks/new', to: 'tasks#new' , as: :new_task # create one
delete 'tasks/:id', to: 'tasks#destroy', as: :delete  # delete one
get 'tasks/:id', to: 'tasks#show' , as: :task# list one
post 'tasks', to: 'tasks#create' # add one
patch 'tasks/:id', to: 'tasks#update'  # update one
get 'tasks/:id/edit', to: 'tasks#edit' , as: :edit_task # edit one
end
