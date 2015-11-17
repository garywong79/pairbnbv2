require 'byebug'

numerals = {
	I: 1,
	IV: 4,
	V: 5,
	IX: 9,
	X: 10,
	XL: 40,
	L: 50,
	XC: 90,
	C: 100,
	CD: 400,
	D: 500,
	CM: 900,
	M: 1000
}

@reversed_numerals =numerals.to_a

@romanised = ""
def roman(num)
    @reversed_numerals.each do |key, value|
        x = (num / value).ceil
        x.times { @romanised << key.to_s }
        num = num % value
    end
	print @romanised
end

# puts to_roman(1) 
# puts t0_roman(3) 
puts t0_roman(1532) 
