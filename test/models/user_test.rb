require "test_helper"

class UserTest < ActiveSupport::TestCase
  test 'user with a valid email should be valid' do
    user = User.new(email: 'test@test.org', password_digest: 'test')
    assert user.valid?
  end

  test 'destroy user should destroy linked product' do
    assert_difference('Product.count', -1) do
      users(:one).destroy
    end
  end
end
