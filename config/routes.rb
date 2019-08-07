Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # read all tasks
  get 'tasks', to: 'tasks#index', as: :tasks
  # create one task
  post 'tasks', to: 'tasks#create'

  get 'tasks/new', to: 'tasks#new', as: :new_task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  # read one task
  get 'tasks/:id', to: 'tasks#show', as: :task
  # update one task
  patch 'tasks/:id', to: 'tasks#update'
  #delete one task
  delete 'tasks/:id', to: 'tasks#destroy'
end
