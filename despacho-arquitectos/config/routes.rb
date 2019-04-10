Rails.application.routes.draw do


  get 'provedores_provedores', to: 'provedores#provedores'
  get 'provedores_mostrar',to: 'provedores#mostrar'
  get 'provedores_edi
  tar',to: 'provedores#editar'
  post '/editar_provedor',to: 'provedores#editar_p'
  post '/new_provedor',to: 'provedores#nuevo'

  resources :almacens
  get 'profesional', to: 'profesional#index'
  post 'new_p', to: 'profesional#nuevo'
  post 'editar_p',to: 'profesional#editar_p'
  get '/ver', to: 'profesional#mostrar'


  get '/editar_terceros', to: 'profesional#editar'
  get '/eliminar_terceros', to: 'profesional#eliminar'



  resources :categories

  get 'welcome/n_product'
  get "n_product", to: "welcome#n_product"

  get 'welcome/n_product'
  get "n_product", to: "welcome#n_product"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#n_product'

  post '/registrar_material', to: 'welcome#registrar'
  get '/ya', to: 'welcome#ya'
end
