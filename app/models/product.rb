class Product < ActiveRecord::Base
  has_and_belongs_to_many :categories
  has_attached_file :product_image, styles: { slider: "542x668#" }

  validates :name, presence: true
  validates :SKU, presence: true
  validates :image_path, presence: true
  validates_attachment :product_image, presence: true,
    content_type: { content_type: "image/jpeg" },
    size: { less_than: 500.kilobytes }

  scope :featured, -> { where(featured: true) }

  def slider_path
    image_path.gsub(/(.*)(\/)(.*)/, '\1/Slider/\3')
  end
end
