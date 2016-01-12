class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :purchase_no, limit: 12
      t.references :client, index: true

      t.timestamps null: false
    end
    add_foreign_key :purchases, :clients
  end
end
