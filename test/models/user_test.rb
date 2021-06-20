require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not save user without email, password and should save admin as false by default" do
    correct_user = User.new(email: "email@teste.com", password: "123456")
    user_without_email = User.new(password: "123456")
    user_without_password = User.new(email: "email2@teste.com")
    assert correct_user.save
    assert_not user_without_email.save
    assert_not user_without_password.save
    assert_equal false, correct_user.admin, "User adm default must be false"
  end
end
