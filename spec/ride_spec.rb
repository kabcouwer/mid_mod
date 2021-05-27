require './lib/person.rb'
require './lib/ride.rb'

RSpec.describe Ride do
  describe 'instantiation' do
    it 'exists' do
      millennium = Ride.new("Millennium Force", 5, 8)

      expect(millennium).to be_a(Ride)
    end

    it 'has readable attributes' do
      millennium = Ride.new("Millennium Force", 5, 8)

      expect(millennium.name).to eq("Millennium Force")
      expect(millennium.cost).to eq(5)
      expect(millennium.intensity).to eq(8)
      expect(millennium.passengers).to eq([])
    end
  end

  describe 'methods' do
    it 'can add passengers' do
      millennium = Ride.new("Millennium Force", 5, 8)
      aurelia = Person.new({"name" => "Aurelia", "age" => 18, "intensity_max" => 5})
      taylor = Person.new({"name" => "Taylor", "age" => 12, "intensity_max" => 3})
      lauren = Person.new({"name" => "Lauren", "age" => 20, "intensity_max" => 8})

      millennium.add_passenger(aurelia)
      millennium.add_passenger(taylor)
      millennium.add_passenger(lauren)

      expect(millennium.passengers).to eq([aurelia, taylor, lauren])
    end

    it 'can calculate percentage adults' do
      millennium = Ride.new("Millennium Force", 5, 8)
      aurelia = Person.new({"name" => "Aurelia", "age" => 18, "intensity_max" => 5})
      taylor = Person.new({"name" => "Taylor", "age" => 12, "intensity_max" => 3})
      lauren = Person.new({"name" => "Lauren", "age" => 20, "intensity_max" => 8})

      millennium.add_passenger(aurelia)
      millennium.add_passenger(taylor)
      millennium.add_passenger(lauren)

      expect(millennium.percentage_adults).to eq(67)
    end
  end
end
