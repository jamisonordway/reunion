class Reunion
  attr_accessor :location,
                :activities

  def initialize(location)
    @location = location
    @activities = {"Skiing"=>200}
  end

  def add_activity(name, cost)
    @activities[name] = cost
  end


end
