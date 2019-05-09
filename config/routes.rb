Rails.application.routes.draw do
  resources :campaigns
  resources :clients

	get '/', to: 'static_pages#home', as: 'home'

end
