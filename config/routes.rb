Rails.application.routes.draw do

  root 'quotes#new'

  resources :leads

  resources :quotes do
    resources :build, controller: 'quotes/build'
  end

end
