class AddAuthorToReviews < ActiveRecord::Migration[7.1]
  def change
    add_column :reviews, :author, :string
  end
end
