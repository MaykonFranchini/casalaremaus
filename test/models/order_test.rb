require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test "should not save order without name, email and phone" do
    correct_order = Order.new(name:"Order order", email:"name@name.com", phone: "2154125")
    order_without_name = Order.new(email:"name@name.com", phone: "2154125")
    order_without_email = Order.new(name:"Order order", phone: "2154125")
    order_without_phone = Order.new(name:"Order order", email:"name@name.com")
    assert correct_order.save
    assert_not order_without_name.save, "Saved the order without a name"
    assert_not order_without_email.save, "Saved the order without email"
    assert_not order_without_phone.save, "Saved the order without a phone"
    assert_equal false, correct_order.status, "Order default status must be false"
  end
end
