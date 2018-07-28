Rails.application.routes.draw do
  resources :contents
  resources :projects
  # get 'admin/index'
  get 'session/create'
  # get 'session/new'
  get 'session/destroy'
  resources :users


  get 'admin' => 'admin#index'
  # get 'search' => 'search#index'
  get 'logout' => 'session#destroy'

  controller :session do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  # get "sessions/create"
  # get "sessions/destroy"

  # resources :user1s

  # get "search/index"
  # post "search/index"

  # The priority is based upon order of creation:
  # first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  # You can have the root of your site routed with "root"
root 'session#create', as: 'index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
