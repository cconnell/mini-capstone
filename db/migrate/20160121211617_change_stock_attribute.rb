class ChangeStockAttribute < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.change :stock, :boolean
    end
  end
end