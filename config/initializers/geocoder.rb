# config/initializers/geocoder.rb
Geocoder.configure do |config|

  # geocoding service (see below for supported options):
  config.lookup = :google

  # to use an API key:
  #config.api_key = "AIzaSyD1b6WS2PH7_f3fP8aF0FyAjOQQwYVdekg"

  # geocoding service request timeout, in seconds (default 3):
  config.timeout = 3

  # set default units to kilometers:
  config.units = :km

  # caching (see below for details):
  #config.cache = Redis.new
  config.cache_prefix = "geocoder:"

end
