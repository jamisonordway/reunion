require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/reunion'
require 'pry'

class ReunionTest < Minitest::Test

  def setup
    @reunion = Reunion.new("Zermatt")
  end

  def test_it_has_a_location
    assert_equal "Zermatt", @reunion.location
  end

  def test_it_has_activities
    expected = {"Skiing"=>200}
    assert_equal expected, @reunion.activities
  end

  def test_activities_can_be_added
    @reunion.add_activity("Snowboarding", 200)
    expected = {"Skiing"=>200, "Snowboarding"=>200}
    assert_equal expected, @reunion.activities
  end

end
