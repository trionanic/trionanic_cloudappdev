class CreateOwners < ActiveRecord::Migration[7.1]
  def change
    create_table :owners do |t|
      t.string :ownerName
      t.datetime :startdate
      t.datetime :enddate

      t.timestamps
    end
  end
end
