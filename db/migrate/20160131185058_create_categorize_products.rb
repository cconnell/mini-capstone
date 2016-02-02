class CreateCategorizeProducts < ActiveRecord::Migration
  def change
    create_table :categorize_products do |t|
      t.integer :product_id
      t.integer :category_id

      t.timestamps 
    end
  end
end
