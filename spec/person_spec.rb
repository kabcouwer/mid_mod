require './lib/person.rb'

RSpec.describe Person do
  describe 'instantiation' do
    it 'exists' do
      aurelia = Person.new({"name" => "Aurelia", "age" => 18, "intensity_max" => 5})

      expect(aurelia).to be_a(Person)
    end

    it 'has readable attributes' do
      aurelia = Person.new({"name" => "Aurelia", "age" => 18, "intensity_max" => 5})
      tayler = Person.new({"name" => "Taylor", "age" => 12, "intensity_max" => 3})

      expect(aurelia.name).to eq("Aurelia")
      expect(aurelia.age).to eq(18)
      expect(aurelia.intensity_max).to eq(5)
    end
  end

  describe 'methods' do
    it 'can calculate if a person is an adult' do
      aurelia = Person.new({"name" => "Aurelia", "age" => 18, "intensity_max" => 5})
      taylor = Person.new({"name" => "Taylor", "age" => 12, "intensity_max" => 3})

      expect(aurelia.adult?).to eq(true)
      expect(taylor.adult?).to eq(false)
    end

    it 'can raise intensity_max by 1 when given a pep talk' do
      aurelia = Person.new({"name" => "Aurelia", "age" => 18, "intensity_max" => 5})
      taylor = Person.new({"name" => "Taylor", "age" => 12, "intensity_max" => 3})
      aurelia.pep_talk

      expect(aurelia.intensity_max).to eq(6)
    end
  end
end
