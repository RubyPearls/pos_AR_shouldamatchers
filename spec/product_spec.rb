require 'spec_helper'

describe Product do

    it { should belong_to(:purchase) }
  end

  #
  # it "tells what purchase a product belongs to" do
  #   purchase = Purchase.create({:purchase_date => "2015/03/01"})
  #   product = Product.create({:name => "product name", :description => "description", :price => 30.00, :purchase_id => purchase.id})
  #   expect(product.purchase).to eq (purchase)
  # end
  #
  # it "validates the length of the product name" do
  #   product = Product.new({:name => "x". *(36)})
  #   expect(product.save).to eq (false)
  # end
  #
  # it "validates the presence of a price" do
  #   product = Product.new({:price => 5.00})
  #   expect(product.price).to eq (5.00)
  # end
# end
