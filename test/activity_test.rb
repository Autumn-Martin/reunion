require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'
require 'pry'

class ActivityTest < Minitest::Test

  def setup
    @activity = Activity.new("paired assessment practice")
  end

  def test_it_exists
    assert_instance_of Activity, @activity
  end

  def test_it_has_a_name
    assert_equal "paired assessment practice", @activity.name
  end

  def test_it_has_participants
    assert_equal ([]), @activity.participants
  end

  def test_can_add_participants
    participant = {name: "Fred", amount: 20}
    @activity.add_particpants(participant)
    
    assert_equal ([{name: "Fred", amount: 20}]), @activity.participants
  end

  def test_it_has_a_base_cost
    assert_equal 0, @activity.base_cost(0)
  end

  def test_cost_per_person
    participant = {name: "Fred", amount: 20}
    @activity.add_particpants(participant)
    participant = {name: "Alice", amount: 20}
    @activity.add_particpants(participant)
    @activity.base_cost(40)

    assert_equal 20, @activity.cost_per_person
  end
end
