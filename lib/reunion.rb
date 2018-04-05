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

  def add_participant
    
  end

  def number_of_participants
    names_of_participants = []
    names_of_participants << @participants.keys
    return names_of_participants.length
  end

  def sum_activity_costs
    @activities.values.sum
  end

  def split_total_cost
    sum_activity_costs / number_of_participants
  end

end
