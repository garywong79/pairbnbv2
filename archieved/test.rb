def grab_all_ssns(string)
  if string.match(/(\d{3}-\d{2}-\d{4})/)
    string.scan(/(\d{3}-\d{2}-\d{4})/)
  else
    []
  end
end

puts "grab_all_ssns returns all SSNs if the string has any SSNs"
puts grab_all_ssns("234-60-1422, 350-80-0744, 013-60-8762")==["234-60-1422", "350-80-0744", "013-60-8762"] 

puts "grab_all_ssns returns an empty Array if it doesn't have any SSNs"
puts grab_all_ssns("please confirm your identity: XXX-XX-1422") == []
