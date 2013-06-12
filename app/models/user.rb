class User < ActiveRecord::Base
  attr_accessible :options_id, :username, :userpassword, :usertype
end
