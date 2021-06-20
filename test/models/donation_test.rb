require 'test_helper'

class DonationTest < ActiveSupport::TestCase
  test "should not save donation without name, quantity, description and a false status (by default)" do
    correct_donation = Donation.new(name: "donation", quantity: 3, description:"unidade")
    donation_without_name = Donation.new(quantity: 3, description:"unidade")
    donation_without_quantity = Donation.new(name: "donation", description:"unidade")
    donation_without_description = Donation.new(name: "donation", quantity: 3)    
    assert correct_donation.save
    assert_equal false, correct_donation.status, "Donation default status must be false"
    assert_not donation_without_name.save
    assert_not donation_without_quantity.save
    assert_not donation_without_description.save
  end
end
