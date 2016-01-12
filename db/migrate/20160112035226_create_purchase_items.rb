class CreatePurchaseItems < ActiveRecord::Migration
  def change
    create_table :purchase_items do |t|
      t.references :purchase, index: true
      t.string :product
      t.string :references
      t.integer :amount

      t.timestamps null: false
    end
    add_foreign_key :purchase_items, :purchases
  end
end
