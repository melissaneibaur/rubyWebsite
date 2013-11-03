# Approximates the area under the curve of the given function on the interval [a,b]
# by using the number of divisions n
def composite_simpsons_rule(f,a,b,n)
	h = (b - a) / n

	sum = f.call(a) + f.call(b)

	(1..n).step(2) do |i|
		sum += 4 * f.call(a + i * h)
	end
	
	(2..n-1).step(2) do |i|
		sum += 2 * f.call(a + i * h)		
	end

	return sum * h / 3.0
end


a = 0.0
b = 2.0
number_of_divisions = 1000
#passing an anonymous function for f which is x ^ 4
result = composite_simpsons_rule(lambda {|x| x**4},a,b,number_of_divisions)
puts "The integral of the function x^4 on the interval [#{a},#{b}] is approximately: #{result}"