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


	def presupuesto
		nuevoPresupuesto = Prueba.new
		nuevoPresupuesto.idpedido = params ["idpedido"]
		nuevoPresupuesto.tipo_pedido = ["tipo_pedido"]
		nuevoPresupuesto.fecha = ["fecha"]
		nuevoPresupuesto.validez = ["validez"]
		nuevoPresupuesto.condicion_pago = ["condicion_pago"]
		nuevoPresupuesto.forma_pago = ["forma_pago"]
		nuevoPresupuesto.metodo_envio = ["metodo_envio"]
		nuevoPresupuesto.fecha_entrega = ["fecha_entrega"]
		nuevoPresupuesto.validado = ["validado"]
		nuevoPresupuesto.firmado_presupuesto = ["firmado_presupuesto"]
		nuevoPresupuesto.enviado_clientes = ["enviado_clientes"]
		nuevoPresupuesto.recibido_clientes = ["recibido_clientes"]
		nuevoPresupuesto.pedido_proveedores = ["pedido_proveedores"]
		nuevoPresupuesto.recibido_proveedores = ["recibido_proveedores"]
		nuevoPresupuesto.save
	end
	
	def ya
	end
end




