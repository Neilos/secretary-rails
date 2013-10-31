ActiveRecord::Schema.define do
  create_table "animals", force: true do |t|
    t.string "name"
    t.string "species"
    t.string "color"
    t.integer "person_id"
    t.timestamps
  end

  create_table "hobbies", force: true do |t|
    t.string "title"
    t.integer "person_id"
    t.timestamps
  end

  create_table "locations", force: true do |t|
    t.string "title"
    t.text "address"
    t.timestamps
  end

  create_table "people", force: true do |t|
    t.string "name"
    t.string "ethnicity"
    t.integer "age"
    t.integer "location_id"
    t.timestamps
  end
  
  create_table "stories", force: true do |t|
    t.string  "headline"
    t.text    "body"
    t.timestamps
  end

  create_table "users", force: true do |t|
    t.string "name"
    t.timestamps
  end

  create_table "versions", force: true do |t|
    t.integer   "version_number"
    t.string    "versioned_type"
    t.integer   "versioned_id"
    t.integer   "user_id"
    t.text      "description"
    t.text      "object_changes"
    t.datetime  "created_at"
  end
end
