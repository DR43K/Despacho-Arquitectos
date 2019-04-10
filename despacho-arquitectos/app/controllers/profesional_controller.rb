class ProfesionalController < ApplicationController

	skip_before_action :verify_authenticity_token
	layout 'etc'
  def index
  	@espe = Professional.select(:especialidad).distinct
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
	nuevo.save

	profesiones = params["profesioness"]
	pr = profesiones.split("\r\n")
	pr.each do |x|
		nu = Profesion.new
		nu.nombre_profesion = x
		nu.terceros_idterceros = nuevo.id
		nu.save
	end

	especialidades = params["especialidades"]
	espe = especialidades.split("\r\n")
	espe.each do |x|
		nu = Especialidad.new
		nu.nombre_especialidad = x
		nu.terceros_idterceros = nuevo.id
		nu.save
	end

	nuevo.profesiones = profesiones
	nuevo.especialidades = especialidades

	if nuevo.save
  		redirect_to '/profesional?status=0'
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
	nuevo.save

	profesiones = params["profesioness"]
	pr = profesiones.split("\r\n")
	pr.each do |x|
		nu = Profesion.new
		nu.nombre_profesion = x
		nu.terceros_idterceros = nuevo.id
		nu.save
	end

	especialidades = params["especialidades"]
	espe = especialidades.split("\r\n")
	espe.each do |x|
		nu = Especialidad.new
		nu.nombre_especialidad = x
		nu.terceros_idterceros = nuevo.id
		nu.save
	end

	nuevo.profesiones = profesiones
	nuevo.especialidades = especialidades

	if nuevo.save
  		redirect_to '/profesional?status=2'
  	end
  end

  def eliminar
  	tercero = Tercero.find(params["format"])
  	tercero.destroy
  	redirect_to '/ver'
  end
end
