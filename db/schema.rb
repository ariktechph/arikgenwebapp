ActiveRecord::Schema.define(version: 2021_10_29_045425) do

  create_table "devicedetails", force: :cascade do |t|
    t.string "imei"
    t.string "brand"
    t.string "model"
    t.string "device_type"
    t.string "ram"
    t.string "built_in_mem"
    t.string "battery"
    t.string "op_sys"
    t.string "chipset"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
