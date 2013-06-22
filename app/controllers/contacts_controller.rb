class ContactsController < ApplicationController
	def index
		@cart = current_cart
		@contact = Contact.new
	end
	def create
		@cart = current_cart
        @contact = Contact.new(params[:contact])
			MainMailer.main_email(@contact).deliver
			flash[:notice] = "Message has been sent"
			redirect_to root_path
		end
end