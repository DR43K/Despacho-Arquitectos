class ProvedoresController < ApplicationController
  skip_before_action :verify_authenticity_token
  def provedores
  end

  def nuevo
  	nuevo = Tercero.new
	nuevo.nombre = params["nombre"] + " " + params["apellidos"]
	nuevo.proveedor = true
	nuevo.direccion = params["pais"] + " " + params["ciudad"] + " " + params["estado"] + " " + params["direccion"] + " " + "CP " + params["codigo_postal"]
	nuevo.codigo_postal = params["codigo_postal"] 
	nuevo.ciudad = params["ciudad"]
	nuevo.estado_provincia = params["estado"]
	nuevo.pais = params["pais"]
	nuevo.email = params["correo"]
	nuevo.sitio_web = params["pagina"] 
	nuevo.telefono = params["telefono"]
	nuevo.rfc = params["rfc"]
	nuevo.forma_juridica = params["forma_j"]
	nuevo.estado_tercero = params["estado_tercero"]
	

	if nuevo.save
  		redirect_to '/provedores_provedores?status=0'
  	end
  end

  def mostrar

  	@todos = Tercero.all

  	@todos = @todos.ciudad(params["ciudad"]) if params["ciudad"].present?
  	@todos = @todos.nombre(params["nombre"]) if params["nombre"].present?
  	@todos = @todos.profesion(params["profesion"]) if params["profesion"].present?
  	@todos = @todos.apellido(params["apellido"]) if params["apellido"].present?
  end

  def editar
  	puts "Los params son"
  	puts params
  	el_id = params["format"]
  	@tercero = Tercero.find(el_id)
  end

  def editar_p

  	nuevo = Tercero.find(params["id_tercero"])
	nuevo.nombre = params["nombre"] + " " + params["apellidos"]
	nuevo.proveedor = true
	nuevo.direccion = params["pais"] + " " + params["ciudad"] + " " + params["estado"] + " " + params["direccion"] + " " + "CP " + params["codigo_postal"]
	nuevo.codigo_postal = params["codigo_postal"] 
	nuevo.ciudad = params["ciudad"]
	nuevo.estado_provincia = params["estado"]
	nuevo.pais = params["pais"]
	nuevo.email = params["correo"]
	nuevo.sitio_web = params["pagina"] 
	nuevo.telefono = params["telefono"]
	nuevo.rfc = params["rfc"]
	nuevo.forma_juridica = params["forma_j"]
	nuevo.estado_tercero = params["estado_tercero"]

	if nuevo.save
  		redirect_to '/provedores_provedores?status=2'
  	end
  end

  def eliminar
  	tercero = Tercero.find(params["format"])
  	tercero.destroy
  	redirect_to '/provedores_mostrar'
  end
end
