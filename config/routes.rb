Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # read all tasks
  get 'tasks', to: 'tasks#index'
  get 'tasks/new', to: 'tasks#new'

  # read one task
  get 'tasks/:id', to: 'tasks#show'

  # create one task
  post 'tasks', to: 'tasks#create'

  # update one task
  get 'tasks/:id/edit', to: 'tasks#edit'
  patch 'tasks/:id', to: 'tasks#update'

  #delete one task
  delete 'tasks/:id', to: 'tasks#destroy'
end
