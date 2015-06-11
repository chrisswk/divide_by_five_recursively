def div_by_five_no_remainder to_be_divided
  #not elegant but solves a broader range of relevant problems
  return 0 if to_be_divided == 0
  return 0 if to_be_divided < 5 && to_be_divided > 0
  return 0 if to_be_divided > -5 && to_be_divided < 0

  return 1 + div_by_five_no_remainder(to_be_divided - 5) if to_be_divided > 0
    
  return -1 + div_by_five_no_remainder(to_be_divided + 5) if to_be_divided < 0

end

def div_by_five_remainder to_be_divided
  fraction  = 0

  return 0 if to_be_divided == 0
  
  if to_be_divided < 5 && to_be_divided > 0
    while to_be_divided != 0
      fraction += 0.2 
      to_be_divided -= 1
    end
    return fraction + div_by_five_remainder( to_be_divided )
  end

  if to_be_divided > -5 && to_be_divided < 0
    while to_be_divided != 0
    	fraction -= 0.2
    	to_be_divided += 1
    end
    return fraction + div_by_five_remainder( to_be_divided )
  end

  return 1 + div_by_five_remainder(to_be_divided - 5) if to_be_divided > 0
    
  return -1 + div_by_five_remainder(to_be_divided + 5) if to_be_divided < 0

end

#"Driver" code
puts "21 / 5: " + div_by_five_no_remainder(21).to_s
puts "-21 / 5: " + div_by_five_no_remainder(-21).to_s
puts "0 / 5: " + div_by_five_no_remainder(0).to_s
puts "5 / 5: " + div_by_five_no_remainder(5).to_s
puts "3 / 5: " + div_by_five_no_remainder(3).to_s
puts "-3 / 5: " + div_by_five_no_remainder(-3).to_s

puts "21 / 5: " + div_by_five_remainder(21).to_s
puts "-21 / 5: " + div_by_five_remainder(-21).to_s
puts "0 / 5: " + div_by_five_remainder(0).to_s
puts "5 / 5: " + div_by_five_remainder(5).to_s

#Why is this happening?
puts "3 / 5: "+ div_by_five_remainder(3)
puts "-3 / 5: " + div_by_five_remainder(-3).to_s
# puts div_by_five_no_remainder()
# puts div_by_five_no_remainder()
# puts div_by_five_no_remainder()
