# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

<<<<<<< HEAD
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20190410133446) do
=======
ActiveRecord::Schema.define(version: 20190410132838) do
>>>>>>> 9c043b955c127c4b3d47658b2fe741cddf64f73e

  create_table "almacens", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.string "direccion"
    t.string "codigo_postal"
    t.string "ciudad"
    t.string "estado_almacen"
    t.string "pais"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "especialidads", force: :cascade do |t|
    t.integer "terceros_idterceros"
    t.string "nombre_especialidad"
    t.integer "anios_experiencia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profesions", force: :cascade do |t|
    t.integer "terceros_idterceros"
    t.string "nombre_profesion"
    t.string "cedula_profesional"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "profesiones"
    t.string "especialidades"
  end

  create_table "professionals", force: :cascade do |t|
    t.string "nombre"
    t.string "domicilio"
    t.string "telefono"
    t.string "correo"
    t.string "pagina"
    t.string "skype"
    t.string "carrera"
    t.string "grado"
    t.string "especialidad"
    t.string "experiencia"
    t.string "obras"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "apellido"
  end
=======
ActiveRecord::Schema.define(version: 20190410032009) do
>>>>>>> caa2054b985543f89213def8de93eddb55c0d255

  create_table "pruebas", force: :cascade do |t|
    t.string "nombre"
    t.integer "precio"
    t.string "categoria"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> caa2054b985543f89213def8de93eddb55c0d255
  create_table "services", force: :cascade do |t|
    t.string "idservicio"
    t.string "etiquetaservicio"
    t.string "estadoventa"
    t.string "estadocompra"
    t.text "descripcion"
    t.integer "duracion"
    t.float "precioventa"
    t.float "precioventamin"
    t.string "categoria"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
=======
>>>>>>> 9c043b955c127c4b3d47658b2fe741cddf64f73e
  create_table "terceros", force: :cascade do |t|
    t.string "nombre"
    t.boolean "cliente"
    t.boolean "proveedor"
    t.string "direccion"
    t.string "codigo_postal"
    t.string "ciudad"
    t.string "estado_provincia"
    t.string "pais"
    t.string "email"
    t.string "sitio_web"
    t.string "telefono"
    t.string "rfc"
    t.string "forma_juridica"
    t.string "logo"
    t.string "mapa"
    t.string "estado_tercero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "profesiones"
    t.string "especialidades"
    t.boolean "profesionista"
  end

=======
>>>>>>> caa2054b985543f89213def8de93eddb55c0d255
end
