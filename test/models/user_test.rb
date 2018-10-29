require 'test_helper'

# assert: assert that the next statement is true
# assert_not: assert that the next statement is false
class UserTest < ActiveSupport::TestCase
  test "user cannot have blank name" do
    user = User.new(name: nil, fashion_choice: 'Halloween')
    assert_not user.save
    user.name = ''
    assert_not user.save
    user.name = 'Bob'
    assert user.save
  end
end
