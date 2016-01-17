Rails.application.routes.draw do
  get '/one' => 'products#one'

    
  get '/store' => 'products#index'
  get '/' => 'products#index'
  get'/products/:id' => 'products#show'
  get '/products/new' => 'products#new'
  post '/products' => 'products#create'
  
end
