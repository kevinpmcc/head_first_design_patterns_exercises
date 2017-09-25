class WeatherData
  def get_temperature
  end

  def get_humidity
  end

  def get_pressure
  end

  def measurements_changed
    temp = get_temperature
    humidity = get_humidity
    pressure = get_pressure
    current_conditions_display.update(temp, humidity, pressure)
    statistics_display.update(temp, humidity, pressure)
    forecast_display.update(temp, humidity, pressure)
  end
end
