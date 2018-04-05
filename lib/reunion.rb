require './lib/activity'

class Reunion
  attr_accessor :location,
                :activities

  def initialize(location)
    @location = location
    @activities = {}
    @participants = {}
  end

  def add_activity(name, cost)
    new_activity = Activity.new(name, cost)
    @activities[new_activity.name] = new_activity.cost
    @participants = new_activity.participants
  end

  def sum_activity_costs
    @activities.values.sum
  end

  def split_total_cost
    sum_activity_costs 
  end

end
