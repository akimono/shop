class Contact < ActiveRecord::Base
  attr_accessible :contactbody, :contactemail, :contactname, :contactsubject
end
