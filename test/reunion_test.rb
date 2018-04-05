require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/reunion'
require './lib/activity'
require 'pry'

class ReunionTest < Minitest::Test

  def setup
    @reunion = Reunion.new("Zermatt")
  end

  def test_it_has_a_location
    assert_equal "Zermatt", @reunion.location
  end

  def test_it_has_activities
    expected = {}
    assert_equal expected, @reunion.activities
  end

  def test_activities_can_be_added
    @reunion.add_activity("Skiing", 200)
    @reunion.add_activity("Snowboarding", 200)
    expected = {"Skiing"=>200, "Snowboarding"=>200}
    assert_equal expected, @reunion.activities
  end

  def test_it_can_sum_cost_of_activities
    @reunion.add_activity("Skiing", 200)
    @reunion.add_activity("Snowboarding", 200)

    assert_equal 400, @reunion.sum_activity_costs
  end

  def test_it_can_split_total_cost
    @reunion.add_activity("Skiing", 200)
    @reunion.add_activity("Snowboarding", 200)

    assert_equal 400, @reunion.split_total_cost
  end

  def test_it_can_print_what_participants_owe
    skip
    @reunion.add_activity("Snowboarding", 200)

    assert_equal "Shaun owes 45.", @reunion.who_owes
  end

end
