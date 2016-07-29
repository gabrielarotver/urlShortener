Rails.application.routes.draw do
  root 'site#new'

  post '/' => 'site#create'
  patch '/' => 'site#create'

  get '/:words', to: 'site#create', :constraints => {:words => /.*/ }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# URI.parse("http://localhost:3000/https://www.pandora.com"). Figure it out.
#validate in controller eventually.
