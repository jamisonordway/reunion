class Activity
  attr_reader :name,
              :cost
  attr_accessor :participants

  def initialize(name, cost)
    @name = name
    @cost = cost
    @participants = {}
  end

  def add_participant(name, amount_paid)
    
  end

end
