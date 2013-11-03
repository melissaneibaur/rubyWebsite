print "Hello. Please enter a Celsius value: "
celsius     = gets                        #opens standard i.o. from keyboard
fahrenheit  = (celsius.to_i * 9 / 5) + 32 # converting celsius to an integer
print "The fahrenheit equivalent is "
print fahrenheit                          #system.out
puts "."                                  # equivalent to println