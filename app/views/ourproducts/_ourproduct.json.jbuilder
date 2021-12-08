json.extract! ourproduct, :id, :prod_name, :prod_price, :prod_description, :prod_image, :created_at, :updated_at
json.url ourproduct_url(ourproduct, format: :json)
