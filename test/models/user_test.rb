require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.create(email: "unique@example.com", password: "password")
  end

  test "should be valid" do
    assert @user.valid?
  end
    
end
