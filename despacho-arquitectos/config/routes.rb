Rails.application.routes.draw do
  resources :services
  get 'welcome/n_product'
  get "n_product", to: "welcome#n_product"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#n_product'

  post '/registrar_material', to: 'welcome#registrar'
  get '/ya', to: 'welcome#ya'
end
