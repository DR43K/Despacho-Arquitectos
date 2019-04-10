class Tercero < ApplicationRecord

	scope :ciudad, -> (ciudad) {where("LOWER(direccion) like '%' || LOWER(?) || '%' ", "#{ciudad}")}
	scope :nombre, -> (nombre) {where("LOWER(nombre) like '%' || LOWER(?) || '%' ", "#{nombre}")}
	scope :profesion, -> (profesion) {where("LOWER(profesiones) like '%' || LOWER(?) || '%' ", "#{profesion}")}
	scope :apellido, -> (apellido) {where("LOWER(nombre) like '%' || LOWER(?) || '%' ", "#{apellido}")}
end
