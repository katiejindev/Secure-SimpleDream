class Product < ActiveRecord::Base
  has_and_belongs_to_many :categories

  validates :name, presence: true
  validates :SKU, presence: true
  validates :image_path, presence: true

  scope :featured, -> { where(featured: true) }

  def slider_path
    image_path.gsub(/(.*)(\/)(.*)/, '\1/Slider/\3')
  end
end
