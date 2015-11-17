require 'byebug'

class RPNCalculator
  def evaluate(equation)
    operands =[]
    evaluation =[]


    equation.split.each do |x|
    	case x
    		when /\d/
    			evaluation << (x.to_i)
    		when "+","-","*","/"
    			operands = evaluation.pop(2)
    			evaluation<< operands[0].send(x,operands[1])
    		end
    	end
    	puts evaluation
    	
  end
end

calc = RPNCalculator.new

# calc.evaluate('1 2 + 4 * 5 + 3 -')
# calc.evaluate('1 2 +')   # => 3
# calc.evaluate('2 5 *')   # => 10
# calc.evaluate('50 20 -') # => 30
calc.evaluate('70 10 4 + 5 * -') # => 0