FileUploaderConverter::Application.routes.draw do

  root :to => 'files#index'
  resources :images, except: [:edit, :update]
  resources :videos, except: [:edit, :update]

end
