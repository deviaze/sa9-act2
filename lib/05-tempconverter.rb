class TemperatureConverter
  def self.celsius_to_fahrenheit c
    (c * 9.0 / 5) + 32
  end

  def self.fahrenheit_to_celsius f
    (f - 32) * 5.0 / 9
  end

end
