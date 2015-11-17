def shuffle(array)
  # Implement the shuffle method
rand(array.join.to_i)
end


# Driver code:
p sorted_array = (1..10).to_a

# This should print a different sequence of numbers each time
p shuffle(sorted_array)
p shuffle(sorted_array)
p shuffle(sorted_array)