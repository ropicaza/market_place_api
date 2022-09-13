class Placement < ApplicationRecord
  belongs_to :order
  belongs_to :product, inverse_of: :placements

  after_create :decremenet_product_quantity!

  def decremenet_product_quantity!
    product.decrement!(:quantity, quantity)
  end
end
