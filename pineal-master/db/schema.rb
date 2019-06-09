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

ActiveRecord::Schema.define(version: 2019_05_26_180632) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bools", force: :cascade do |t|
    t.string "bool"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contests", force: :cascade do |t|
    t.integer "dias"
    t.date "f_creacion"
    t.date "f_apertura"
    t.date "f_aprobacion"
    t.date "f_ingreso"
    t.string "comentario"
    t.string "status"
    t.integer "position_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "completed"
  end

  create_table "managements", force: :cascade do |t|
    t.string "sigla"
    t.integer "vicepresidency_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "options", force: :cascade do |t|
    t.string "apto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "origins", force: :cascade do |t|
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string "nombre"
    t.integer "vacantes"
    t.string "fip"
    t.string "rol"
    t.string "contrato"
    t.integer "superintendence_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "turno"
  end

  create_table "postulants", force: :cascade do |t|
    t.string "apto"
    t.string "panel"
    t.date "f_panel"
    t.string "psicolaboral"
    t.date "f_psicolaboral"
    t.string "preocupacional"
    t.date "f_preocupacional"
    t.string "ajusta_renta"
    t.integer "r_esperada"
    t.string "observaciones"
    t.string "pasos_seguir"
    t.string "nombre"
    t.string "residencia"
    t.string "ex_empleador"
    t.string "ex_cargo"
    t.integer "origin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "esed"
    t.integer "contest_id"
  end

  create_table "records", force: :cascade do |t|
    t.string "vp"
    t.string "rol"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gerencia"
    t.string "si"
    t.string "cargo"
    t.integer "nvacantes"
    t.integer "apto"
    t.integer "noapto"
    t.string "encoordinacion"
    t.string "integer"
    t.integer "npostulantes"
    t.integer "diasconcurso"
    t.string "fechaapertura"
    t.string "fechaaprobacion"
    t.string "fechaaprobacionceo"
    t.string "fechaingreso"
    t.string "status"
    t.string "comentario"
  end

  create_table "superintendences", force: :cascade do |t|
    t.string "nombre"
    t.integer "management_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vicepresidencies", force: :cascade do |t|
    t.string "sigla"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
