puts "Reading data from file..."
num          = File.read("temperature.dat")
celsius      = num.to_i
fahrenheit   = (celsius * 9 / 5) + 32
puts "Saving to a new file..."
fh           = File.new("tempout.out", "w")
fh.puts fahrenheit
fh.close