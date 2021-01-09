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

ActiveRecord::Schema.define(version: 2021_01_09_191217) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conditions", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_conditions_on_name"
  end

  create_table "formula_actions", force: :cascade do |t|
    t.bigint "formula_id", null: false
    t.bigint "formula_named_action_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["formula_id"], name: "index_formula_actions_on_formula_id"
    t.index ["formula_named_action_id"], name: "index_formula_actions_on_formula_named_action_id"
  end

  create_table "formula_also_knowns", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "formula_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["formula_id"], name: "index_formula_also_knowns_on_formula_id"
    t.index ["name"], name: "index_formula_also_knowns_on_name"
  end

  create_table "formula_conditions", force: :cascade do |t|
    t.bigint "formula_id", null: false
    t.bigint "condition_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["condition_id"], name: "index_formula_conditions_on_condition_id"
    t.index ["formula_id"], name: "index_formula_conditions_on_formula_id"
  end

  create_table "formula_contraindications", force: :cascade do |t|
    t.bigint "formula_id", null: false
    t.text "contraindication"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["formula_id"], name: "index_formula_contraindications_on_formula_id"
  end

  create_table "formula_herb_actions", force: :cascade do |t|
    t.bigint "formula_herb_id", null: false
    t.bigint "formula_named_action_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["formula_herb_id"], name: "index_formula_herb_actions_on_formula_herb_id"
    t.index ["formula_named_action_id"], name: "index_formula_herb_actions_on_formula_named_action_id"
  end

  create_table "formula_herbs", force: :cascade do |t|
    t.bigint "formula_id", null: false
    t.bigint "herb_id", null: false
    t.string "dosage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["formula_id"], name: "index_formula_herbs_on_formula_id"
    t.index ["herb_id"], name: "index_formula_herbs_on_herb_id"
  end

  create_table "formula_interactions", force: :cascade do |t|
    t.bigint "formula_id", null: false
    t.text "interaction"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["formula_id"], name: "index_formula_interactions_on_formula_id"
  end

  create_table "formula_manifestation_symptoms", force: :cascade do |t|
    t.bigint "formula_manifestation_id", null: false
    t.bigint "symptom_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["formula_manifestation_id"], name: "index_formula_manifest_sx_on_formula_manifest_id"
    t.index ["symptom_id"], name: "index_formula_manifestation_symptoms_on_symptom_id"
  end

  create_table "formula_manifestations", force: :cascade do |t|
    t.bigint "formula_id", null: false
    t.string "tongue"
    t.string "tongue_coat"
    t.string "pulse"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["formula_id"], name: "index_formula_manifestations_on_formula_id"
  end

  create_table "formula_modification_sets", force: :cascade do |t|
    t.bigint "formula_id", null: false
    t.string "purpose"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["formula_id"], name: "index_formula_modification_sets_on_formula_id"
    t.index ["purpose"], name: "index_formula_modification_sets_on_purpose"
  end

  create_table "formula_modifications", force: :cascade do |t|
    t.bigint "formula_modification_set_id", null: false
    t.bigint "herb_id", null: false
    t.string "modification"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["formula_modification_set_id"], name: "index_formula_modifications_on_formula_modification_set_id"
    t.index ["herb_id"], name: "index_formula_modifications_on_herb_id"
  end

  create_table "formula_named_actions", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_formula_named_actions_on_name"
  end

  create_table "formula_notes", force: :cascade do |t|
    t.bigint "formula_id", null: false
    t.text "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["formula_id"], name: "index_formula_notes_on_formula_id"
  end

  create_table "formula_syndromes", force: :cascade do |t|
    t.bigint "formula_id", null: false
    t.bigint "syndrome_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["formula_id"], name: "index_formula_syndromes_on_formula_id"
    t.index ["syndrome_id"], name: "index_formula_syndromes_on_syndrome_id"
  end

  create_table "formulas", force: :cascade do |t|
    t.string "name", null: false
    t.string "pinyin"
    t.string "hanzi"
    t.string "english"
    t.string "common_english"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["common_english"], name: "index_formulas_on_common_english"
    t.index ["english"], name: "index_formulas_on_english"
    t.index ["hanzi"], name: "index_formulas_on_hanzi"
    t.index ["name"], name: "index_formulas_on_name"
    t.index ["pinyin"], name: "index_formulas_on_pinyin"
  end

  create_table "herb_action_annotations", force: :cascade do |t|
    t.bigint "herb_action_id", null: false
    t.text "annotation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["herb_action_id"], name: "index_herb_action_annotations_on_herb_action_id"
  end

  create_table "herb_action_indications", force: :cascade do |t|
    t.bigint "herb_action_id", null: false
    t.text "indication"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["herb_action_id"], name: "index_herb_action_indications_on_herb_action_id"
  end

  create_table "herb_action_types", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_herb_action_types_on_name"
  end

  create_table "herb_actions", force: :cascade do |t|
    t.bigint "herb_id", null: false
    t.bigint "herb_action_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["herb_action_type_id"], name: "index_herb_actions_on_herb_action_type_id"
    t.index ["herb_id"], name: "index_herb_actions_on_herb_id"
  end

  create_table "herb_categories", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_herb_categories_on_name"
  end

  create_table "herb_combination_herbs", force: :cascade do |t|
    t.bigint "herb_id", null: false
    t.bigint "herb_combination_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["herb_combination_id"], name: "index_herb_combination_herbs_on_herb_combination_id"
    t.index ["herb_id"], name: "index_herb_combination_herbs_on_herb_id"
  end

  create_table "herb_combination_use_cases", force: :cascade do |t|
    t.bigint "herb_combination_id", null: false
    t.text "use_case"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["herb_combination_id"], name: "index_herb_combination_use_cases_on_herb_combination_id"
  end

  create_table "herb_combinations", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["description"], name: "index_herb_combinations_on_description", unique: true
  end

  create_table "herb_dosage_types", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_herb_dosage_types_on_name"
  end

  create_table "herb_dosages", force: :cascade do |t|
    t.bigint "herb_id", null: false
    t.bigint "herb_dosage_type_id", null: false
    t.string "dosage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["herb_dosage_type_id"], name: "index_herb_dosages_on_herb_dosage_type_id"
    t.index ["herb_id"], name: "index_herb_dosages_on_herb_id"
  end

  create_table "herb_notes", force: :cascade do |t|
    t.bigint "herb_id", null: false
    t.text "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["herb_id"], name: "index_herb_notes_on_herb_id"
  end

  create_table "herb_properties", force: :cascade do |t|
    t.bigint "herb_id", null: false
    t.bigint "herb_property_type_id", null: false
    t.bigint "precedence_type_id", null: false
    t.string "property"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["herb_id"], name: "index_herb_properties_on_herb_id"
    t.index ["herb_property_type_id"], name: "index_herb_properties_on_herb_property_type_id"
    t.index ["precedence_type_id"], name: "index_herb_properties_on_precedence_type_id"
    t.index ["property"], name: "index_herb_properties_on_property"
  end

  create_table "herb_property_types", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_herb_property_types_on_name"
  end

  create_table "herb_warning_types", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_herb_warning_types_on_name"
  end

  create_table "herb_warnings", force: :cascade do |t|
    t.bigint "herb_id", null: false
    t.bigint "herb_warning_type_id", null: false
    t.string "warning", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["herb_id"], name: "index_herb_warnings_on_herb_id"
    t.index ["herb_warning_type_id"], name: "index_herb_warnings_on_herb_warning_type_id"
  end

  create_table "herbs", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "herb_category_id", null: false
    t.string "pinyin"
    t.string "hanzi"
    t.string "latin"
    t.string "pharm_latin"
    t.string "common_english"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["common_english"], name: "index_herbs_on_common_english"
    t.index ["hanzi"], name: "index_herbs_on_hanzi"
    t.index ["herb_category_id"], name: "index_herbs_on_herb_category_id"
    t.index ["latin"], name: "index_herbs_on_latin"
    t.index ["name"], name: "index_herbs_on_name"
    t.index ["pharm_latin"], name: "index_herbs_on_pharm_latin"
    t.index ["pinyin"], name: "index_herbs_on_pinyin"
  end

  create_table "knex_migrations", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.integer "batch"
    t.datetime "migration_time"
  end

  create_table "knex_migrations_lock", primary_key: "index", id: :serial, force: :cascade do |t|
    t.integer "is_locked"
  end

  create_table "precedence_types", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_precedence_types_on_name"
  end

  create_table "symptoms", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_symptoms_on_name"
  end

  create_table "syndromes", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_syndromes_on_name"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "formula_actions", "formula_named_actions"
  add_foreign_key "formula_actions", "formulas"
  add_foreign_key "formula_also_knowns", "formulas"
  add_foreign_key "formula_conditions", "conditions"
  add_foreign_key "formula_conditions", "formulas"
  add_foreign_key "formula_contraindications", "formulas"
  add_foreign_key "formula_herb_actions", "formula_herbs"
  add_foreign_key "formula_herb_actions", "formula_named_actions"
  add_foreign_key "formula_herbs", "formulas"
  add_foreign_key "formula_herbs", "herbs"
  add_foreign_key "formula_interactions", "formulas"
  add_foreign_key "formula_manifestation_symptoms", "formula_manifestations"
  add_foreign_key "formula_manifestation_symptoms", "symptoms"
  add_foreign_key "formula_manifestations", "formulas"
  add_foreign_key "formula_modification_sets", "formulas"
  add_foreign_key "formula_modifications", "formula_modification_sets"
  add_foreign_key "formula_modifications", "herbs"
  add_foreign_key "formula_notes", "formulas"
  add_foreign_key "formula_syndromes", "formulas"
  add_foreign_key "formula_syndromes", "syndromes"
  add_foreign_key "herb_action_annotations", "herb_actions"
  add_foreign_key "herb_action_indications", "herb_actions"
  add_foreign_key "herb_actions", "herb_action_types"
  add_foreign_key "herb_actions", "herbs"
  add_foreign_key "herb_combination_herbs", "herb_combinations"
  add_foreign_key "herb_combination_herbs", "herbs"
  add_foreign_key "herb_combination_use_cases", "herb_combinations"
  add_foreign_key "herb_dosages", "herb_dosage_types"
  add_foreign_key "herb_dosages", "herbs"
  add_foreign_key "herb_notes", "herbs"
  add_foreign_key "herb_properties", "herb_property_types"
  add_foreign_key "herb_properties", "herbs"
  add_foreign_key "herb_properties", "precedence_types"
  add_foreign_key "herb_warnings", "herb_warning_types"
  add_foreign_key "herb_warnings", "herbs"
  add_foreign_key "herbs", "herb_categories"
end
