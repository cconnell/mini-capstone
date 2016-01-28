class ChangeImageToUrl < ActiveRecord::Migration
  def change
    rename_column :images, :image, :url
  end
end
