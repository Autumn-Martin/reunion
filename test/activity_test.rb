require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test
  def test_it_exists
    activity = Activity.new("Fred")
    assert_instance_of Activity, activity
  end

  def test_it_has_a_name
    activity = Activity.new("Fred")
    assert_equal "Fred", activity.name
  end
  # def test_it_has_participants
  #   activity = Activity.new
  # end
end
