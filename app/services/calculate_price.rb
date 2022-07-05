class CalculatePrice
  attr_reader :error

  def initialize
    @error = nil
  end

  def calculate_car_price(id)
    car = Car.find_by(id: id)
    result =  car.price_last_year - car.price_now

    result >= 0 ? result : @error = 'Error'
  end
end
