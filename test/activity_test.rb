require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'
require 'pry'

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
    expected = {"Shaun"=>50}
    assert_equal expected, @activity.participants
  end

  def test_it_knows_how_many_participants
    @activity.add_participant("Shaun", 50)
    assert_equal 1, @activity.number_of_participants

    @activity.add_participant("Hannah", 50)
    assert_equal 2, @activity.number_of_participants
  end

  def test_it_can_split_cost
    assert_equal 50, @activity.split_cost(4)
  end

  def test_it_can_calculate_who_owes
    @activity.add_participant("Shaun", 5)
    @activity.add_participant("Hananah", 95)
    @activity.add_participant("Scotty", 50)
    @activity.add_participant("Shannon", 50)

    assert_equal "Shaun owes 45", @activity.who_owes
  end

  def test_it_can_calculate_who_is_owed
    skip
  end

end
