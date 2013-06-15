class CreateContactors < ActiveRecord::Migration
  def change
    create_table :contactors do |t|
      t.string :contactoremail
      t.string :contactorsubject
      t.string :contactorbody
      t.string :contactorname

      t.timestamps
    end
  end
end
