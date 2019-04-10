class WelcomeController < ApplicationController
	skip_before_action :verify_authenticity_token

  	def n_product
  	end

  	def registrar
  		#nombre = params["NombreProducto"]
		nuevoProducto = Prueba.new
		nuevoProducto.nombre = params["NombreProducto"]

		#precio = params["PrecioVenta"]
		nuevoProducto.precio = params["PrecioVenta"]

		#estadoproducto = params["EstadoProducto"]
		nuevoProducto.estadoproducto = params["EstadoProducto"]

		#descripcion = params["Descripcion"]
		nuevoProducto.descripcion = params["Descripcion"]

		#naturaleza = params["Naturaleza"]
		nuevoProducto.naturaleza = params["Naturaleza"]

		#peso = params["Peso"]
		nuevoProducto.peso = params["Peso"]

		#longitud = params["Longitud"]
		nuevoProducto.longitud = params["Longitud"]

		#largo = params["Largo"]
		nuevoProducto.largo = params["Largo"]

		#alto = params["Alto"]
		nuevoProducto.alto = params["Alto"]

		#superficie = params["Superficie"]
		nuevoProducto.superficie = params["Superficie"]

		#volumen = params["Volumen"]
		nuevoProducto.volumen = params["Volumen"]

		nuevoProducto.save
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




