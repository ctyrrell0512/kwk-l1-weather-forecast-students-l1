# Your methods should take in a hash as an argument - here's an example of what the hash will look like - the methods should take this hash as an argument and return the desired output. 

weather = {
	:city => "New York",
	:description => "Partly Cloudy",
	:temperature_farenheit => 75
}

# 1. Complete the method below called location, that accepts a hash called weather as an argument so that it returns the value of city from the weather hash. 
def location(weather)
	weather.values[0]
end

puts location(weather)


# 2. Using the location method as a guide, write a  method called "description" so it returns the description from the weather hash. 
def description(weather)
  weather.values[1]
end

puts description(weather)

# 3. Using the methods above and string interpolation, update the method below so that it returns a string that describes the current weather - for example: "The weather in New York is Partly Cloudy. The temperature is 66.1 degrees Farenheit." HINT: the method should RETURN the string, not print it to the terminal. 

def temperature_farenheit(weather)
  temperature_farenheit.values[2]
end

def weather_report(weather)
  temperature_farenheit = 75
  return "The weather in #{location(weather)} is #{description(weather)}. The temperature is #{temperature_farenheit} degrees Farenheit."
end

#4. Write a method that takes in the weather hash as an argument. 
# You'll want to use the each method to iterate over the hash and print out
# `The city is New York.` `The description is Partly Cloudy.` `The temperature is 66.3.`
def city_weather_info(weather)
  weather.each do |keys, values|
    puts "The #{keys} is #{values}. "
  end
end


# BONUS:  Write a method that takes in the weather hash as an argument and converts the farenheit temperature to celcius. Have the method round your answer to two decimal places. Is there a method we can use to round in Ruby?

# Hint - how can we find the algorithm to convert Farenheit to Celsius?

def convert_temp(weather)
  temperature_celcius = (weather.values[2] - 32) / 1.8000
  puts temperature_celcius.round
end
  
puts convert_temp(weather)
  
  



