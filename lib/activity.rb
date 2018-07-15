class Activity
  attr_reader :name, :participants, :base_cost
  def initialize(name)
    @name = name
    @participants = []
    @base_cost = 0
  end

  def add_particpants(participant)
    @participants << participant
  end

  def base_cost(cost)
    @base_cost = cost
  end

  def cost_per_person
    # divide up base cost by number of people
    number_of_people = participants.length
    @base_cost / number_of_people
  end
end
