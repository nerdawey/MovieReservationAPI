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

ActiveRecord::Schema[8.0].define(version: 2024_11_11_174457) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "poster_url"
    t.string "genre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "showtime_id", null: false
    t.bigint "seat_id", null: false
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["seat_id"], name: "index_reservations_on_seat_id"
    t.index ["showtime_id"], name: "index_reservations_on_showtime_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "seats", force: :cascade do |t|
    t.string "seat_number"
    t.string "row_number"
    t.bigint "showtime_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["showtime_id"], name: "index_seats_on_showtime_id"
  end

  create_table "showtimes", force: :cascade do |t|
    t.bigint "movie_id", null: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_showtimes_on_movie_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "role"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "reservations", "seats"
  add_foreign_key "reservations", "showtimes"
  add_foreign_key "reservations", "users"
  add_foreign_key "seats", "showtimes"
  add_foreign_key "showtimes", "movies"
end
