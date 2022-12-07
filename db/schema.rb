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

ActiveRecord::Schema[7.0].define(version: 2022_12_02_123314) do
  create_table "anti_patterns", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bloopers", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "website_id", null: false
    t.bigint "anti_pattern_id", null: false
    t.string "url", default: "real", null: false
    t.text "description"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "screenshot"
    t.index ["anti_pattern_id"], name: "index_bloopers_on_anti_pattern_id"
    t.index ["website_id"], name: "index_examples_on_website_id"
  end

  create_table "clients", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "name"
    t.string "contact"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consequences", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "persona_id", null: false
    t.bigint "anti_pattern_id", null: false
    t.text "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["anti_pattern_id"], name: "index_consequences_on_anti_pattern_id"
    t.index ["persona_id"], name: "index_personas_to_insights_on_persona_id"
  end

  create_table "insights", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "virtue_id", null: false
    t.string "name", null: false
    t.string "short_name"
    t.string "general_value"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["virtue_id"], name: "index_insights_on_virtue_id"
  end

  create_table "patterns", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "insight_id", null: false
    t.string "name", null: false
    t.text "description"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["insight_id"], name: "index_examples_on_insight_id"
  end

  create_table "patterns_to_anti_patterns", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "pattern_id", null: false
    t.bigint "anti_pattern_id", null: false
    t.index ["anti_pattern_id"], name: "index_patterns_to_anti_patterns_on_anti_pattern_id"
    t.index ["pattern_id"], name: "index_patterns_to_anti_patterns_on_pattern_id"
  end

  create_table "personas", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "name", null: false
    t.string "prototype"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
  end

  create_table "roles", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "icon"
    t.string "name"
    t.string "mission"
    t.text "description"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tools", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "name", null: false
    t.string "short_name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "icon"
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  create_table "video_to_tools", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "video_id", null: false
    t.bigint "tool_id", null: false
    t.string "purpose"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tool_id"], name: "index_videos_to_tools_on_tool_id"
    t.index ["video_id"], name: "index_videos_to_tools_on_video_id"
  end

  create_table "video_to_wcag_elements", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "video_id", null: false
    t.bigint "wcag_element_id", null: false
    t.string "purpose"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["video_id"], name: "index_videos_to_wcag_criteria_on_video_id"
    t.index ["wcag_element_id"], name: "index_videos_to_wcag_criteria_on_wcag_criterion_id"
  end

  create_table "videos", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "title", null: false
    t.text "lead"
    t.text "description"
    t.string "youtube_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "virtues", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.string "intent"
    t.text "description"
    t.text "notes"
    t.text "image"
    t.boolean "inspires_design"
    t.boolean "inspires_development"
    t.boolean "inspires_writing"
    t.boolean "inspires_multimedia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wcag_elements", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "name_en"
    t.string "name_de"
    t.string "level"
    t.text "lead_en"
    t.text "lead_de"
    t.text "description_de"
    t.text "description_en"
    t.string "explains_why_en"
    t.string "explains_why_de"
    t.text "notes"
    t.bigint "parent_id"
    t.integer "position"
    t.float "wcag_version"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parent_id"], name: "index_parent_id_on_wcag_elements_fk"
  end

  create_table "websites", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "client_id", null: false
    t.string "name"
    t.string "url"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_projects_on_client_id"
  end

  add_foreign_key "bloopers", "anti_patterns", on_update: :cascade
  add_foreign_key "bloopers", "websites", on_update: :cascade
  add_foreign_key "consequences", "anti_patterns", on_update: :cascade
  add_foreign_key "consequences", "personas", on_update: :cascade
  add_foreign_key "insights", "virtues", on_update: :cascade
  add_foreign_key "patterns", "insights", on_update: :cascade
  add_foreign_key "patterns_to_anti_patterns", "anti_patterns", on_update: :cascade
  add_foreign_key "patterns_to_anti_patterns", "patterns", on_update: :cascade
  add_foreign_key "video_to_tools", "tools", on_update: :cascade
  add_foreign_key "video_to_tools", "videos", on_update: :cascade
  add_foreign_key "video_to_wcag_elements", "videos", on_update: :cascade
  add_foreign_key "video_to_wcag_elements", "wcag_elements", on_update: :cascade
  add_foreign_key "wcag_elements", "wcag_elements", column: "parent_id", name: "success_criteria_parent_id_fk", on_update: :cascade
  add_foreign_key "websites", "clients", on_update: :cascade
end
