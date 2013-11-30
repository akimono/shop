class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :product_id, :product, :line_quantity
  belongs_to :product
  belongs_to :cart
  def total_price
  	product.price*line_quantity
  end
end
