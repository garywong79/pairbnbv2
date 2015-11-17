# TODO: Refactor for elegance
def shout_backwards(string)
  	all_caps  = string.upcase.reverse + "!!!"

	all_caps
end


# FIXME: This is convoluted. Refactor for clarity.
def squared_primes(array)
	# array.find_all{|x| (2..x-1).select(){|i| x % i == 0 }.count == 0 }

	b = array.find_all do |x|
		a = (2..x-1).select() do |i| 
			x % i == 0 
		end
		a.count == 0
	end

	b.map do |p| 
		p*p 
	end

end

# Driver code... don't edit. This should print a bunch of trues.
puts shout_backwards("hello, boot") == "TOOB ,OLLEH!!!"
puts squared_primes([1, 3, 4, 7, 42]) == [1, 9, 49]


  	# array_1 = array.find_all do |x| 
	# array_2 = (2..x-1).to_a
	# array_3 = array_2.select() do |i| 
	# x % i == 0 
	# end
	# array_3.count == 0 
	# end
	# array_3 =array_1.map{|p| p*p}

	# array.find_all
	# {|x| (2..x-1).select(){|i| x % i == 0 }.count == 0 } = 1

	# {|x| (2..x-1) = 2
	# 	.select(){|i| x % i == 0  = 3
	# 	.count == 0  = 4



	# 1.map{|p| p*p}
