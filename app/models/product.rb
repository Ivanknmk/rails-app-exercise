class Product < ActiveRecord::Base
  mount_uploader :img, ProductImageUploader
  has_many :purchases
  belongs_to :product_category
  accepts_nested_attributes_for :product_category
end
