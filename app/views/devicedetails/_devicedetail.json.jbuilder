json.extract! devicedetail, :id, :imei, :brand, :model, :device_type, :ram, :built_in_mem, :battery, :op_sys, :chipset, :created_at, :updated_at
json.url devicedetail_url(devicedetail, format: :json)
