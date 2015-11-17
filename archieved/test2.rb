# Return all of the Social Security numbers from a string.
def grab_all_ssns(string)
  if string.match(/\d\d\d-\d\d-\d\d\d\d/)
    string.scan(/\d\d\d-\d\d-\d\d\d\d/)
  else
    []
  end
end

puts "grab_all_ssns returns all SSNs if the string has any SSNs"
puts grab_all_ssns("234-60-1422, 350-80-0744, 013-60-8762") == ["234-60-1422", "350-80-0744", "013-60-8762"]

puts "grab_all_ssns returns an empty Array if it doesn't have any SSNs"
puts grab_all_ssns("please confirm your identity: XXX-XX-1422") == []

