class Product < ActiveRecord::Base

  scope :has_not_been_purchased, -> do
    where({:purchased => false})
  end

  belongs_to :purchase
  validates :name, {:presence => true, :length => { :maximum => 50 }}
  validates :description, {:presence => true, :length => { :maximum => 100}}
  validates :price, {:presence => true}

end
