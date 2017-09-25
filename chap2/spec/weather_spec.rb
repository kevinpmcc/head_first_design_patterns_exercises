require_relative '../lib/weather'

describe WeatherData do
  it { is_expected.to respond_to :get_temperature }

  it { is_expected.to respond_to :get_humidity }

  it { is_expected.to respond_to :get_pressure }
end
