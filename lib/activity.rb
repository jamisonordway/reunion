

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
    @participants[name] = amount_paid
  end

  def number_of_participants
    names_of_participants = @participants.keys
    names_of_participants.length
  end

  def split_cost(number_of_participants)
    each_owe = @cost / number_of_participants
    each_owe
  end

end
