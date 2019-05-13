class Addcolumnrelation < ActiveRecord::Migration[5.1]
  def change
  	  	add_column :aurthors, :book_id, :integer
  	  	add_column :categories, :book_id, :integer

  end
end
