Rails.application.routes.draw do
  get 'partials/partial'

  get 'home/index'

  get '/partials/:path.html' => 'partials#partial', :constraints => { :path => /.+/  }

  root 'home#index'

end
