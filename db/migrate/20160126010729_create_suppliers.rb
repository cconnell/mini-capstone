class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.integer :supplier_id
      t.string :name
      t.string :email
      t.string :phone

      t.timestamps null: false
    end
  end
end
