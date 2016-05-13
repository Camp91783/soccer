require 'test_helper'

class TeamTest < ActiveSupport::TestCase

  test "test is valid" do
  	@team = teams(:one)
    assert(@team.valid?, "This should be valid under normal circcumstances")
  end

  test "test is not valid with non-unique name" do
    	@team = teams(:one)
      assert(@team.valid?, "This should be valid under normal circcumstances")
      t = @team.dup
      refute(t.valid?)
  end

  test "test should fail if name is not present" do
  	@team = teams(:one)
  	@team.name = nil
  	refute(@team.valid?, "This should be invalid without a name")
	end


end
