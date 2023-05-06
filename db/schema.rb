# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_05_05_152833) do

  create_table "articles", force: :cascade do |t|
    t.string "article_type"
    t.string "title"
    t.text "description"
    t.text "image_url"
    t.string "price"
    t.integer "etat"
    t.integer "annee_modele"
    t.text "orgine"
    t.boolean "premiere_main"
    t.string "marque"
    t.integer "nombre_portes"
    t.integer "modele"
    t.integer "kilometrage"
    t.string "ville"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "nom"
    t.string "email", null: false
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "tele"
    t.string "ville"
  end

end
