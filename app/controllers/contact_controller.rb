class ContactController < ApplicationController
	def index
		@cart = current_cart
		@contactor = Contactor.new
	end
	def create
		@cart = current_cart
		@contactor = @contactor
			ContactMailer.contact_email(@contactor).deliver
			flash[:notice] = "Message has been sent"
			redirect_to contact_path
		end
end
