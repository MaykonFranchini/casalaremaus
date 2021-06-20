require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save item without quantity" do
    donation = Donation.create(name: "Rice", quantity: 13, description: "unidade")
    order = Order.create(name:"Order order", email:"name@name.com", phone: "2154125")
    correct_item = Item.new(donation: donation, order: order, quantity: 3.0)
    item_without_quantity = Item.new(donation: donation, order: order)
    item_without_donation = Item.new(order: order, quantity: 3.0)
    item_without_order = Item.new(donation: donation, quantity: 3.0)
    assert correct_item.save
    assert_not item_without_quantity.save, "Saved the item without a quantity"
    assert_not item_without_donation.save, "Saved the item without a donation"
    assert_not item_without_order.save, "Saved the item without a order"
  end
end
