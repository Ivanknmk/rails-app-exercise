class ProductCategory < ActiveRecord::Base
  has_many :products
  belongs_to :parent_category, class_name: "ProductCategory"
end
