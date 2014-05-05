class AddDetailsToProducts < ActiveRecord::Migration
  def change
  	change_table :products do |t|
  		t.change :shipping, :string
  	end
  end
end
