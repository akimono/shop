class ApplicationController < ActionController::Base
  protect_from_forgery
before_filter :secretword
 def secretword
    @secretword = "Frank1985"
   if (params[:vendid] != nil)
    cookies[:vendid] = params[:vendid]
  end
  @vendorshown = Vendor.find(cookies[:vendid])
rescue ActiveRecord::RecordNotFound
      @vendorshown = Vendor.find(1)
end
  private
  def current_cart
  	Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
  	cart= Cart.create
  	session[:cart_id] = cart.id
  	cart
  end
 
end
