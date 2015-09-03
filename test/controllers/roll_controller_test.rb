require 'test_helper'

class RollControllerTest < ActionController::TestCase
  
  def setup
    @testroll = Roll.new(sides: "6", number: "10")
  end

  test "dice should be valid" do
    @testroll.sides = @testroll.sides = "50"
    assert_not @testroll.valid?
  end
end
