class ChangeUsers < ActiveRecord::Migration
  def change_table :users do |t|
  	t.string :userimage
  	t.string :user_email
  	t.remove serpassword 
  end
end
