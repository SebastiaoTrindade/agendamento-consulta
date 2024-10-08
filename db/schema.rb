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

ActiveRecord::Schema.define(version: 2024_09_08_014619) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pacientes", force: :cascade do |t|
    t.string "nome"
    t.date "data_nascimento"
    t.string "nome_responsavel"
    t.string "email_responsavel"
    t.string "endereco"
    t.date "data_cadastro"
    t.text "historico_medico"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "psicopedagogos", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.string "telefone"
    t.string "especialidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.string "password_digest"
  end

end
