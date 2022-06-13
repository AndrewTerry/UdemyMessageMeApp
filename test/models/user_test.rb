require "test_helper"

class UserTest < ActiveSupport::TestCase

  test "should be valid" do
    user = User.new(username: "Clark Kent", password: "password123")
    assert user.save
  end
  
  test "should be unique" do
    User.create(username: "Clark Kent", password: "password123")
    assert User.create(username: "Clark Kent", password: "password123").invalid?
  end
  
  test "should be at least 3 characters long" do
    assert User.create(username: "a", password: "password123").invalid?
  end
  
  test "should not be more than 25 characters long" do
    longusername = "Claaaaaaaaaaaaaaaaaaaaaark Kent"
    assert User.create(username: longusername, password: "password123").invalid?
  end
  
end
