Rails.application.routes.draw do
  
  devise_for :users
  root "products#index"

  get '/' => 'products#index'
  get '/products'=> 'products#index'
  
 
  get '/products/new' => 'products#new'
  post '/products' => 'products#create'
  
  get '/products/random' => 'products#random'
  get'/products/:id' => 'products#show'

  get '/carted_products' => 'carted_products#index'
  post '/carted_products' => 'carted_products#create'
  get '/carted_products/:id' => 'carted_products#show'
  get '/carted_products/:id/edit' =>'carted_products#edit'
  patch '/carted_products/:id' => 'carted_products#update'

  get '/products/:id/edit' =>'products#edit'
  patch '/products/:id' => 'products#update'

  delete '/products/:id' => 'products#destroy'

  post '/search' => 'products#search'

  get '/suppliers' => 'suppliers#index'
  get '/suppliers/new' => 'suppliers#new'
  post '/suppliers' => 'suppliers#create'
  get '/suppliers/:id' => 'suppliers#show'
  get '/suppliers/:id/edit' => 'suppliers#edit'
  patch '/suppliers/:id' => 'suppliers#update'
  delete '/suppliers/:id' => 'suppliers#destroy'

  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show' 



end
