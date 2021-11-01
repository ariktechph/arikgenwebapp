class CreateDevicedetails < ActiveRecord::Migration[6.1]
  def change
    create_table :devicedetails do |t|
      t.string :imei
      t.string :brand
      t.string :model
      t.string :device_type
      t.string :ram
      t.string :built_in_mem
      t.string :battery
      t.string :op_sys
      t.string :chipset

      t.timestamps
    end
  end
end
