class Product < ActiveRecord::Base
  validates :name, presence: true
  validates :SKU, presence: true
  validates :image_path, presence: true
end
