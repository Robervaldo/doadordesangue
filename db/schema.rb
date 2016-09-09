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

ActiveRecord::Schema.define(version: 20160909013327) do

  create_table "cidades", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "CID_NOME"
    t.integer  "CID_ESTADO"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doadores", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nome"
    t.datetime "dtNascimento"
    t.string   "tipoSanguineo"
    t.string   "genero"
    t.string   "estado"
    t.string   "cidade"
    t.string   "emailPrincipal"
    t.string   "emailAlternativo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estados", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "EST_NOME"
    t.string   "EST_SIGLA"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pessoa", primary_key: "PES_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "PES_NOME",              limit: 40, null: false
    t.datetime "PES_DATA_CADASTRO",                null: false
    t.datetime "PES_DATA_NASCIMENTO",              null: false
    t.integer  "PES_ESTADO",                       null: false
    t.integer  "PES_CIDADE",                       null: false
    t.string   "PES_CPF",               limit: 15
    t.string   "PES_GENERO",            limit: 1,  null: false
    t.string   "PES_TIPO_SANGUINEO",    limit: 3,  null: false
    t.string   "PES_EMAIL_PRINCIPAL",   limit: 50, null: false
    t.string   "PES_EMAIL_ALTERNATIVO", limit: 50
    t.string   "PES_PESO",              limit: 3
    t.string   "PES_ALTURA",            limit: 4
    t.string   "PES_IP",                limit: 15
    t.string   "PES_STATUS",            limit: 1,  null: false
    t.index ["PES_CIDADE"], name: "PES_CIDADE", using: :btree
    t.index ["PES_ESTADO"], name: "PES_ESTADO", using: :btree
  end

  create_table "pessoas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "PES_NOME"
    t.datetime "PES_DATA_CADASTRO"
    t.datetime "PES_DATA_NASCIMENTO"
    t.integer  "PES_ESTADO"
    t.integer  "PES_CIDADE"
    t.string   "PES_CPF"
    t.string   "PES_GENERO"
    t.string   "PES_TIPO_SANGUINEO"
    t.string   "PES_EMAIL_PRINCIPAL"
    t.string   "PES_EMAIL_ALTERNATIVO"
    t.string   "PES_PESO"
    t.string   "PES_ALTURA"
    t.string   "PES_IP"
    t.string   "PES_STATUS"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end
