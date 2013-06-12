class ContactController < ApplicationController
	def new
		@message = Message.new
		@cart = current_cart
	end
	def create
		@message = Message.new(params[:message])
		@cart = current_cart
		if @message.valid?
			ContactMailer.new_message(@message).deliver
			redirect_to(products_path, :notice => "Your message was successfully sent. If you do not hear back in one business day please resend.")
		else
			flash.now.alert = "Please fill all fields."
			render :new
		end
end   
end
