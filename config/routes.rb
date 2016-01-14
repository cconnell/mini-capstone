Rails.application.routes.draw do
  get '/one' => 'products#one'
  get 'store' => 'products#store'
end
