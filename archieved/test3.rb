
def to_roman(num)
  roman = { 1000 => "M",
            500 => "D",
            100 => "C",
            50 => "L",
            10 => "X",
            5 => "V",
            1 => "I"
          }

  roman_numerals = ""

  until num == 0
    roman.each_pair do |key, value|
      if num/key >= 1
      	num = num % key
        roman_numerals += value * (num/key)
      end
    end

  end
  roman_numerals
end

puts to_roman(6)


