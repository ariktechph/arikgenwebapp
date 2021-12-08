class CreateOurproducts < ActiveRecord::Migration[6.1]
  def change
    create_table :ourproducts do |t|
      t.string :prod_name
      t.string :prod_price
      t.string :prod_description
      t.string :prod_image

      t.timestamps
    end
  end
end
