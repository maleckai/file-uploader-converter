FileUploaderConverter::Application.routes.draw do

  root :to => 'files#index'
  resources :images, except: [:edit, :update]

end
