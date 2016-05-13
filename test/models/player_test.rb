require 'test_helper'

class PlayerTest < ActiveSupport::TestCase

  test "test is valid" do
  	@player = players(:one)
    assert(@player.valid?, "This should be valid under normal circcumstances")
  end

  test "test is not valid with non-unique name or non-unique email" do
    	@player = players(:one)
      assert(@player.valid?, "This should be valid under normal circcumstances")
      p = @player.dup
      refute(p.valid?)
  end

  test "test should fail if name is not present" do
  	@player = players(:one)
  	@player.name = nil
  	refute(@player.valid?, "This should be invalid without a name")
	end

  test "test should fail if email is not present" do
  	@player = players(:one)
  	@player.email = nil
  	refute(@player.valid?, "This should be invalid without an email")
	end

end