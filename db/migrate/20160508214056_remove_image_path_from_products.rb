class RemoveImagePathFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :image_path
  end
end
