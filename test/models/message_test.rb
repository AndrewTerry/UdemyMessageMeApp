require "test_helper"

class MessageTest < ActiveSupport::TestCase
  
  test "should have a message body" do
    assert Message.create(body: "", user_id: "1").invalid?
  end
end
