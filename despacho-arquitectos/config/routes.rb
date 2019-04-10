Rails.application.routes.draw do
  resources :almacens
  get 'profesional', to: 'profesional#index'
  post 'new_p', to: 'profesional#nuevo'
  post 'editar_p',to: 'profesional#editar_p'
  get '/ver', to: 'profesional#mostrar'

  get '/editar_terceros', to: 'profesional#editar'
  get '/eliminar_terceros', to: 'profesional#eliminar'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
