class WelcomeController < ApplicationController
	skip_before_action :verify_authenticity_token

  	def n_product
  	end

  	def registrar
  		#nombre = params["NombreMaterial"]
		nuevoMaterial = Prueba.new
		nuevoMaterial.nombre = params["NombreMaterial"]

		#precio = params["PrecioUnitario"]
		nuevoMaterial.precio = params["PrecioUnitario"]

		#categoria = params["Categoria"]
		nuevoMaterial.categoria = params["Categoria"]

		nuevoMaterial.save
		redirect_to '/ya'
	end

	def ya
	end
end




