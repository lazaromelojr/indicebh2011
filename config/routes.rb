Indicebh2010::Application.routes.draw do

  resources :admin_indicebhs

  resources :indice_pincipals

  resources :indices

  devise_for :users do
   get 'logout' => 'devise/sessions#destroy'
  end

  resources :contatos

  resources :estruturaindicebhs

  resources :indiceconexaos

  resources :clientes

  resources :pesquisaqualitativas

  resources :servicosindices

  resources :nossos_servicos

  resources :indice_bhs

  resources :usuarios

  root :to => "indice_pincipals#index"

  resources :cadastro_clientes

end

