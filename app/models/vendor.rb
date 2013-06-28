class Vendor < ActiveRecord::Base
  attr_accessible :vendor_email, :vendor_image, :vendor_name, :vendor_notes, :vendor_payment, :vendor_products
  mount_uploader :vendor_image, ImageUploader
end
