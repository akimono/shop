class ContactorsController < ApplicationController
	def index
		@cart = current_cart
		@contactor = Contactor.new
	end
	def create
		@cart = current_cart
			ContactMailer.contact_email(params[contactoremail]).deliver
			flash[:notice] = "Message has been sent"
			redirect_to root_path
		end
end

