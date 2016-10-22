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

ActiveRecord::Schema.define(version: 20161022033504) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.string   "name"
    t.integer  "ability_type",     default: 0
    t.string   "activation"
    t.boolean  "ranked"
    t.boolean  "force_talent",     default: false
    t.text     "description"
    t.string   "tree_description"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "adversaries", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "adversary_type"
    t.integer  "brawn"
    t.integer  "agility"
    t.integer  "intellect"
    t.integer  "cunning"
    t.integer  "willpower"
    t.integer  "presence"
    t.integer  "soak"
    t.integer  "wound_threshold"
    t.integer  "strain_threshold"
    t.integer  "melee_defense"
    t.integer  "range_defense"
    t.text     "skills"
    t.text     "talents"
    t.text     "abilities"
    t.text     "equipment"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "careers", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "career_skills"
    t.integer  "force_rating",  default: 0
    t.integer  "source_id"
    t.integer  "page_number"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["source_id"], name: "index_careers_on_source_id", using: :btree
  end

  create_table "moralities", force: :cascade do |t|
    t.integer  "min_value"
    t.integer  "max_value"
    t.integer  "emotion"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "nodes", force: :cascade do |t|
    t.integer  "tree_id"
    t.integer  "ability_id"
    t.integer  "x"
    t.integer  "y"
    t.integer  "size",       default: 1
    t.integer  "cost"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["ability_id"], name: "index_nodes_on_ability_id", using: :btree
    t.index ["tree_id"], name: "index_nodes_on_tree_id", using: :btree
  end

  create_table "source_associations", force: :cascade do |t|
    t.integer  "source_id"
    t.string   "sourceable_type"
    t.integer  "sourceable_id"
    t.integer  "page_number"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["source_id"], name: "index_source_associations_on_source_id", using: :btree
    t.index ["sourceable_type", "sourceable_id"], name: "index_source_associations_on_sourceable_type_and_sourceable_id", using: :btree
  end

  create_table "sources", force: :cascade do |t|
    t.string   "title"
    t.string   "product_code"
    t.integer  "setting"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "species", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "physiology"
    t.text     "society"
    t.text     "homeworld"
    t.text     "language"
    t.text     "force"
    t.text     "sidebar"
    t.integer  "brawn"
    t.integer  "agility"
    t.integer  "intellect"
    t.integer  "cunning"
    t.integer  "willpower"
    t.integer  "presence"
    t.integer  "wound_threshold"
    t.integer  "strain_threshold"
    t.integer  "starting_experience"
    t.string   "skill_bonus"
    t.text     "abilities"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "trees", force: :cascade do |t|
    t.string   "name"
    t.integer  "tree_type",     default: 0
    t.integer  "career_id"
    t.text     "description"
    t.text     "career_skills"
    t.integer  "force_rating",  default: 0
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["career_id"], name: "index_trees_on_career_id", using: :btree
  end

  add_foreign_key "careers", "sources"
  add_foreign_key "nodes", "abilities"
  add_foreign_key "source_associations", "sources"
  add_foreign_key "trees", "careers"
end
