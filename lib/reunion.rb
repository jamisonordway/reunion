require './lib/activity'

class Reunion
  attr_accessor :location,
                :activities

  def initialize(location)
    @location = location
    @activities = {"Skiing"=>200}
  end

  def add_activity(name, cost)
    new_activity = Activity.new(name, cost)
    @activities[new_activity.name] = new_activity.cost
  end

  def sum_activity_costs
    @activities.values.sum
  end

  def split_total_cost
    sum_activity_costs / 
  end

  def who_owes

  end


end
