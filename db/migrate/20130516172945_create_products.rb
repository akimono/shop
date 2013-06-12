class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image
      t.string :video
      t.decimal :shipping
      t.decimal :price
      t.integer :quantity
      t.string :type

      t.timestamps
    end
  end
end
