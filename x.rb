class Car
  def initialize(make, model)
  end

  def to_car(car)
    _other_car = Car(car)
  end

  private

  def Car(car)
    return if car.is_a? Car
    raise "cant convert #{car.class} to car"
    # ..
  end
end
