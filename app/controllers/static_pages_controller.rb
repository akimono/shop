class StaticPagesController < ApplicationController
	def faq
		@cart = current_cart
	end
	def payments
		@cart = current_cart
	end
	def business
		@cart = current_cart
	end
	def about
		@cart = current_cart
	end
	def contact
		@cart = current_cart
	end
end
