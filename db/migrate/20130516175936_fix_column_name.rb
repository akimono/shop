class FixColumnName < ActiveRecord::Migration
  def up
  end
def change
	rename_column :products, :type, :producttype
end
  def down
  end
end
