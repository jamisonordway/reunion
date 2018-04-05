

class Activity
  attr_reader :name,
              :cost
  attr_accessor :participants

  def initialize(name, cost)
    @name = name
    @cost = cost
    @participants = {"Gretchen"=>50}
  end

  def add_participant(name, amount_paid)
    @participants[name] = amount_paid
  end

  def number_of_participants
    names_of_participants = @participants.keys
    names_of_participants.length
  end

  def split_cost(number_of_participants)
    cost_for_each = @cost / number_of_participants
    cost_for_each
  end

  def who_owes
      name = @participants.keys
      paid = @participants.values
      @participants.each do |name, paid|
      if paid < split_cost(number_of_participants)
        owes = split_cost(number_of_participants) - paid
        return "#{name} owes #{owes}."
      end
    end
  end

  def who_is_owed
    name = @participants.keys
    paid = @participants.values
    @participants.each do |name, paid|
    if paid > split_cost(number_of_participants)
      owed = paid - split_cost(number_of_participants)
      return "#{name} is owed #{owed}."
      end
    end
  end

end
