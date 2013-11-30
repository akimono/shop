class CombineItemsInCart < ActiveRecord::Migration
  def up
  	Cart.all.each do |cart|
  		sums = cart.line_items.group(:product_id).sum(:line_quantity)

  		sums.each do |product_id, line_quantity|
  			if line_quantity > 1
  				cart.line_items.create(:product_id=>product_id, :line_quantity=>line_quantity)
  			end
  		end
  	end
  end

  def down
  	LineItem.where("line_quantity>1").each do |line_item|
  		line_item.quantity.times do
  			LineItem.create :cart_id => line_item.cart_id,
  			:product_id => line_item.product_id, :quantity=>1
  		end
  		line_item.destroy
  	end
  end
end
