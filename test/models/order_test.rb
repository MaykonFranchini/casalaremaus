require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save order without name, email and phone" do
    order_with_name = Order.new(name:"Order order")
    order_with_email = Order.new(email:"name@name.com")
    order_with_phone = Order.new(phone: "2154125")
    assert_not order_with_name.save, "Saved the order without a email and phone"
    assert_not order_with_email.save, "Saved the order without a name and phone"
    assert_not order_with_phone.save, "Saved the order without a email and name"
    assert_equal false, order_with_name.status, "Order default status must be false"
  end
end
