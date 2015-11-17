#create tic-tac-toe
# 3x3 row,column
# with x and o
# random 
#generate 10 boards
# ttt = []
alphabets = ["X","X","X","X","X","O","O","O","O","O"]
shuffled = alphabets.sample(9)

# 3.times do |x|
# 	ttt << shuffled.slice((3*x)..(3*x+2))
# end

# 	ttt << shuffled.slice(0..2)
# 	ttt << shuffled.slice(3..5)
# 	ttt << shuffled.slice(6..8)

# 3.times do
# 	ttt << shuffled.slice!(0..2)
# end

ttt = Array.new(3){ shuffled.slice!(0..2) }

p ttt.inspect