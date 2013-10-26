class Product < ActiveRecord::Base
  belongs_to :category
  has_one :price, :dependent => :destroy
  validates_presence_of :name
  validates_presence_of :category_id

  def self.product_without_price
    Product.select {|product| Price.find_by_product_id(product.id) == nil}
  end

  def self.product_without_price_and(prod)
    Product.select {|product| Price.find_by_product_id(product.id) == nil or product==prod}
  end

end


