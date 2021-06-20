require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save item without quantity" do
    donation = Donation.create(name: "Rice", quantity: 13, description: "unidade")
    order = Order.create(name:"Order order", email:"name@name.com", phone: "2154125")
    item = Item.new(donation: donation, order: order)
    assert_not item.save, "Saved the item without a quantity"
  end
end
