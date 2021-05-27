
class Person
  attr_reader :name,
              :age,
              :intensity_max

  def initialize(person_info)
    @name = person_info["name"]
    @age = person_info["age"]
    @intensity_max = person_info["intensity_max"]
  end

  def adult?
    if age >= 18
      true
    else
      false
    end
  end

  def pep_talk
    @intensity_max += 1
  end

end
