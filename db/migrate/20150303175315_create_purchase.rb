class CreatePurchase < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.date :purchase_date    #t.column(:purchase, :date)
      t.integer :product_id   #t.belongs_to :products

      t.timestamps null: false
    end
  end
end
