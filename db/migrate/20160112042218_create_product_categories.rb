class CreateProductCategories < ActiveRecord::Migration
  def change
    create_table :product_categories do |t|
      t.string :name
      t.references :parent_category, index: true

      t.timestamps null: false
    end
    add_foreign_key :product_categories, :parent_categories
  end
end
