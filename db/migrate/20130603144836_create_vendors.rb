class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :vendor_name
      t.string :vendor_email
      t.string :vendor_image
      t.string :vendor_products
      t.text :vendor_notes
      t.string :vendor_payment

      t.timestamps
    end
  end
end
