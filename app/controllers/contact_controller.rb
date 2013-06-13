class ContactController < ApplicationController
	def index
		@cart = current_cart
	end
	def create
		@cart = current_cart
			ContactMailer.deliver_contact
			flash[:notice] = "Message has been sent"
			redirect_to root_path
		end
end   
end
