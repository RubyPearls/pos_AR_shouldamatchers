class AddPurchaseIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :purchase_id, :integer
    add_column :products, :purchased, :boolean
    remove_column :purchases, :product_id
  end
end
