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

ActiveRecord::Schema.define(version: 20171117132323) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "marca_proveedors", force: :cascade do |t|
    t.integer  "marca_id"
    t.integer  "proveedore_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "marca_proveedors", ["marca_id"], name: "index_marca_proveedors_on_marca_id", using: :btree
  add_index "marca_proveedors", ["proveedore_id"], name: "index_marca_proveedors_on_proveedore_id", using: :btree

  create_table "marcas", force: :cascade do |t|
    t.string   "descrip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "descripcion"
    t.integer  "cantidad"
    t.string   "cod_bar"
    t.float    "precio_costo"
    t.float    "precio_venta"
    t.integer  "sub_category_id"
    t.integer  "marca_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "products", ["marca_id"], name: "index_products_on_marca_id", using: :btree
  add_index "products", ["sub_category_id"], name: "index_products_on_sub_category_id", using: :btree

  create_table "proveedores", force: :cascade do |t|
    t.string   "nombre"
    t.string   "ruc"
    t.string   "contacto"
    t.string   "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_categories", force: :cascade do |t|
    t.string   "descripcion"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "sub_categories", ["category_id"], name: "index_sub_categories_on_category_id", using: :btree

  create_table "sucursals", force: :cascade do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.string   "localidad"
    t.string   "telefono"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "marca_proveedors", "marcas"
  add_foreign_key "marca_proveedors", "proveedores"
  add_foreign_key "products", "marcas"
  add_foreign_key "products", "sub_categories"
  add_foreign_key "sub_categories", "categories"
end
