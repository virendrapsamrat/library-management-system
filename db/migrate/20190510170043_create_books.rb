class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
    	t.string :name
    	t.integer :price
    	t.integer :pages
    	t.integer :aurthor_id, foreign_key: true
    	t.integer :category_id, foreign_key: true 

      t.timestamps
    end
  end
end
