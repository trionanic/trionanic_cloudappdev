class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    drop_table :books
    create_table :books do |t|
      t.string title
	  t.owner_id:
      t.timestamps
    end
  end
end
