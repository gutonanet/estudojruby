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

ActiveRecord::Schema.define(version: 20151220221657) do

  create_table "arsenals", force: :cascade do |t|
    t.integer  "jogador_id", limit: 4
    t.integer  "item_id",    limit: 4
    t.integer  "quantidade", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "arsenals", ["item_id"], name: "index_arsenals_on_item_id", using: :btree
  add_index "arsenals", ["jogador_id"], name: "index_arsenals_on_jogador_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.string   "descricao",  limit: 255
    t.integer  "funcao",     limit: 4
    t.integer  "elemento",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "jogadors", force: :cascade do |t|
    t.string   "login",           limit: 255
    t.boolean  "permite_audio"
    t.boolean  "permite_musica"
    t.integer  "moedas",          limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "email",           limit: 255
    t.string   "password_digest", limit: 255
  end

  add_index "jogadors", ["email"], name: "index_jogadors_on_email", using: :btree

  create_table "mapas", force: :cascade do |t|
    t.integer  "numero",     limit: 4
    t.integer  "pontuacao",  limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "menus", force: :cascade do |t|
    t.integer  "menu_id",    limit: 4
    t.string   "descricao",  limit: 255
    t.string   "link",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "pontuacaos", force: :cascade do |t|
    t.integer  "jogador_id", limit: 4
    t.integer  "mapa_id",    limit: 4
    t.float    "pontuacao",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "pontuacaos", ["jogador_id"], name: "index_pontuacaos_on_jogador_id", using: :btree
  add_index "pontuacaos", ["mapa_id"], name: "index_pontuacaos_on_mapa_id", using: :btree

  add_foreign_key "arsenals", "items"
  add_foreign_key "arsenals", "jogadors"
  add_foreign_key "pontuacaos", "jogadors"
  add_foreign_key "pontuacaos", "mapas"
end
