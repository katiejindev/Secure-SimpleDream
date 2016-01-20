class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :SKU
      t.string :image_path

      t.timestamps null: false
    end
  end
end
