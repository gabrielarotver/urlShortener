Rails.application.routes.draw do
  root 'site#new'

  post '/' => 'site#create'
  patch '/' => 'site#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
