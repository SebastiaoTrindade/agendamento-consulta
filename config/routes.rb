Rails.application.routes.draw do
  
  # Rota raiz para tela de login
  root 'sessions#new'

  # Rotas para sessões
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  # # Rotas para usuários
  # get 'signup', to: 'usuarios#new'
  # post 'usuarios', to: 'usuarios#create'
  # get 'usuarios/edit'
  # patch 'usuarios/update'

  # Rota para o dashboard
  get 'dashboard', to: 'dashboard#index'
  
end
