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

ActiveRecord::Schema.define(version: 20160910035324) do

  create_table "cadastros", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "cad_nome",              limit: 40, null: false
    t.date     "cad_data_nascimento",              null: false
    t.bigint   "cad_estado"
    t.bigint   "cad_cidade",                       null: false
    t.string   "cad_cpf",               limit: 15
    t.string   "cad_genero",            limit: 1
    t.string   "cad_tipo_sanguineo",    limit: 3,  null: false
    t.string   "cad_email_principal",   limit: 40, null: false
    t.string   "cad_email_alternativo", limit: 40
    t.string   "cad_peso",              limit: 5
    t.string   "cad_altura",            limit: 5
    t.string   "cad_ip",                limit: 15
    t.string   "cad_status",            limit: 1,  null: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "cidades", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "CID_NOME"
    t.integer  "CID_ESTADO"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estados", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "EST_NOME"
    t.string   "EST_SIGLA"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
