class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :product_category, index: true
      t.text :sku, limit: 10
      t.string :name
      t.decimal :price, precision: 12, scale: 2

      t.timestamps null: false
    end
    add_foreign_key :products, :product_categories
  end
end
