Rails.application.routes.draw do
  resources :cadastros
  #resources :cidades
  resources :estados
  
  root 'home#index'

  get "/update_cidades" => "cadastros#update_cidades"

  #get '/cidades/:estado/listar', to: 'cidades#listar', as: 'list_cidades'
  
  #post '/cadastro' => 'pessoas#create'
  
  #get '/pessoa', to: 'pessoas#index', as: 'pessoas'
  
  #get '/pessoa', to: 'pessoas#show', as: 'pessoa'
  
  #get '/pessoa/:id' => 'pessoas#show'
  
  #get '/cadastro/:id', to: 'pessoas#show', as: 'pessoa'
  
  #get '/cadastro/:id/edit', to: 'pessoas#edit', as: 'edit_pessoa'
  
  #get '/cadastro', to: 'pessoas#new', as: 'new_pessoa'

  #get 'home/index'
  
  #get 'partials/partial'
  
  #get '/partials/:path.html' => 'partials#partial', :constraints => { :path => /.+/  }

end