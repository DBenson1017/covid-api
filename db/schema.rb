# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_09_171520) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reports", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.string "state"
    t.string "dataQualityGrade"
    t.date "date"
    t.integer "death"
    t.integer "deathIncrease"
    t.integer "deathProbable"
    t.integer "hospitalizedCumulative"
    t.integer "hospitalizedCurrently"
    t.integer "inIcuCurrently"
    t.integer "onVentilatorCurrently"
    t.integer "negative"
    t.integer "positive"
    t.integer "positiveCasesViral"
    t.integer "recovered"
    t.integer "totalTestResult"
    t.integer "totalTestsAntiboby"
    t.integer "positiveTestsAntibody"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_reports_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password"
    t.string "state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
