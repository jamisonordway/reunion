require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test

  def setup
    @activity = Activity.new("snowboarding", 200)
  end

  def test_it_has_a_name
    assert_equal "snowboarding", @activity.name
  end

  def test_it_has_a_cost
    assert_equal 200, @activity.cost
  end

  def test_it_starts_with_no_participants
    expected = {}
    assert_equal expected, @activity.participants
  end

  def test_it_can_add_participants
    @activity.add_participant("Shaun", 50)
    expected = {"Shaun" => 50}
    assert_equal expected, @activity.participants
  end

end
