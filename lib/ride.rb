class Ride
  attr_reader :name,
              :cost,
              :intensity,
              :passengers

  def initialize(name, cost, intensity)
    @name = name
    @cost = cost
    @intensity = intensity
    @passengers = []
  end

  def add_passenger(person)
    @passengers << person
  end

  def percentage_adults
    adults = @passengers.find_all do |person|
      person.adult? == true
    end
    percentage = (adults.count.to_f / @passengers.count) * 100
    return percentage.round
  end

end
