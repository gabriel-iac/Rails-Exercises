class Product < ActiveRecord::Base
  has_many :line_items

  before_destroy :ensure_not_referenced_by_any_line_item

  validates :title, :description, :image_url, presence: true
  validates :price, numericality: {grater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format:{
    with: %r{(gif|jpg|png)\Z}i,
    message: 'must be a URL for GIF PNG OR JPG image'
  }
  def self.latest
    Product.order(:updated_at).last
  end

  private

  #ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_line
    if line_items.empty?
      return true
    else
      error.add(:base, 'Line Items present')
      return false
    end
  end
end
