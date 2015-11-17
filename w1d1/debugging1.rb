#Run the code. Read the error message.

#Change the assigned value of sample_avg so that it does not throw an error.

def mean(numbers)
  sum = numbers.inject(:+)
  
  return sum / numbers.length
end

# This will throw an error. Change this line so that it works.
numbers = [5,3,6,10]
p sample_avg = mean(numbers)

#comment out the above code with your new solution