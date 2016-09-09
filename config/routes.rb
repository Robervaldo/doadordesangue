Rails.application.routes.draw do
  #resources :cidades
  #resources :estados
  #resources :pessoas
  root 'home#index'
  
  #resources :doadors
  
  #get 'partials/partial'
  
  get '/cadastro' => 'pessoas#new'

  #get 'home/index'
  
  #get '/partials/:path.html' => 'partials#partial', :constraints => { :path => /.+/  }

end