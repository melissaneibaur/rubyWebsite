puts "Reading data from file..."
num = File.read("temperature.dat")
celsius = num.to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "The number is " + num
print "Result "
puts fahrenheit