Rails.application.routes.draw do
<<<<<<< HEAD
  resources :almacens
  get 'profesional', to: 'profesional#index'
  post 'new_p', to: 'profesional#nuevo'
  post 'editar_p',to: 'profesional#editar_p'
  get '/ver', to: 'profesional#mostrar'

  get '/editar_terceros', to: 'profesional#editar'
  get '/eliminar_terceros', to: 'profesional#eliminar'

=======
  get 'welcome/n_product'
  get "n_product", to: "welcome#n_product"
>>>>>>> eea8cf127ab31a54463c1925ba45cc41ce983413
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#n_product'

  post '/registrar_material', to: 'welcome#registrar'
  get '/ya', to: 'welcome#ya'
end
