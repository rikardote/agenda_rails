# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160522082009) do

  create_table "appointment", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "physician_id"
    t.date     "fecha_inicial"
    t.date     "fecha_final"
    t.string   "horario"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "appointment", ["patient_id"], name: "index_appointment_on_patient_id"
  add_index "appointment", ["physician_id"], name: "index_appointment_on_physician_id"

  create_table "appointments", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "physician_id"
    t.date     "fecha_inicial"
    t.date     "fecha_final"
    t.string   "horario"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "appointments", ["patient_id"], name: "index_appointments_on_patient_id"
  add_index "appointments", ["physician_id"], name: "index_appointments_on_physician_id"

  create_table "patients", force: :cascade do |t|
    t.string   "rfc"
    t.string   "name"
    t.string   "father_lastname"
    t.string   "mother_lastname"
    t.date     "fecha_nacimiento"
    t.integer  "type_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "physicians", force: :cascade do |t|
    t.integer  "num_empleado"
    t.string   "name"
    t.string   "father_lastname"
    t.string   "mother_lastname"
    t.integer  "specialty_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "physicians", ["specialty_id"], name: "index_physicians_on_specialty_id"

  create_table "specialties", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.integer  "code"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
