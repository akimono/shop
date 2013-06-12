class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :userpassword
      t.string :usertype
      t.string :options_id

      t.timestamps
    end
  end
end
