class Purchase < ActiveRecord::Base
  has_many :products

  validates :purchase_date, {:presence => true}

end
