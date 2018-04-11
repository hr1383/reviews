Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'reviews/:id' => 'reviews#get'
  get 'rmw' => 'reviews#rmw'
  get 'thrive' => 'reviews#thrive'
  get 'kree' => 'reviews#kree'
  get 'alamo' => 'reviews#alamo'
end
