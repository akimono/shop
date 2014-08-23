class StaticPagesController < ApplicationController
	def faq
		@cart = current_cart
	end
	def payments
		@cart = current_cart
	end
	def pachislomanual
		@cart = current_cart
	end
	def about
		@cart = current_cart
	end
	def contact
		@cart = current_cart
	end
	def pachinkomanual
		@cart = current_cart
	end
	def confirmation
		@cart = current_cart
		@products = Product.all
		@products = Product.find_all_by_producttype("Parts and Accessories")
	end
end
