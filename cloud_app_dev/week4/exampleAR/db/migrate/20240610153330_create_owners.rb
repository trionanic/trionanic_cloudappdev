class CreateOwners < ActiveRecord::Migration[7.1]
  def change
    drop_table :owners
    create_table :owners do |t|
      t.ownerName
      t.timestamps
    end
  end
end
