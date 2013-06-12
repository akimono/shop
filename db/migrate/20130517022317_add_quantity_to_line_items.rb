class AddQuantityToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :line_quantity, :integer, :default => 1
  end
end
