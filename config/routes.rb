Rails.application.routes.draw do
  get '/one' => 'products#one'

    
  get '/' => 'products#index'
  get '/products' => 'products#index'
  
 
  get '/products/new' => 'products#new'
  post '/products' => 'products#create'
  
  get '/products/random' => 'products#random'
  get'/products/:id' => 'products#show'

  get '/products/:id/edit' =>'products#edit'
  patch '/products/:id' => 'products#update'

  delete '/products/:id' => 'products#destroy'

  post '/search' => 'products#search'

end
