Rails.application.routes.draw do
  
  get 'pacientes/new'
  get 'pacientes/create'
  get 'pacientes/index'
  get 'psicopedagogos/new'
  get 'psicopedagogos/create'
  get 'psicopedagogos/index'
  # Rota raiz para tela de login
  root 'sessions#new'

  # Rotas para sessões
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get'logout', to: 'sessions#destroy'

  # Rotas para usuários
  resources :usuarios, only: [:new, :create]
  # get 'usuarios/new', as: 'new_usuario'
  # post 'usuarios', to: 'usuarios#create'
  # get 'signup', to: 'usuarios#new'  
  # get 'usuarios/edit'
  # patch 'usuarios/update'

  # Rota para o dashboard
  get 'dashboard', to: 'dashboard#index'
  #get 'dashboard/usuarios', to: 'dashboard#usuarios'

  # Rotas para psicopedagogos
  resources :psicopedagogos, only: [:new, :create]

  # Rotas para pacientes
  resources :pacientes, only: [:new, :create]
  
  
end
