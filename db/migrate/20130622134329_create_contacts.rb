class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :contactbody
      t.string :contactemail
      t.string :contactname
      t.string :contactsubject

      t.timestamps
    end
  end
end
