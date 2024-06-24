class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :review
      t.boolean :read
      t.integer :year
      t.float :price
      t.integer :numPages
      t.timestamps
    end
  end
end
