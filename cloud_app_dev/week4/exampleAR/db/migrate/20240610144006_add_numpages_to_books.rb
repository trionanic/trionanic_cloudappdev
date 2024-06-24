class AddNumpagesToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :numpages, :integer
  end
end
