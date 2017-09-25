Rails.application.routes.draw do
  resources :sts
  get 'site_m/index'
  get 'site_m/workpage'
  get 'site_m/mapp'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
