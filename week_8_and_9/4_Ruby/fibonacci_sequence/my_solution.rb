# U3.W8-9: 


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode



# 3. Initial Solution

# def is_fibonacci?(num)

# end



# 4. Refactored Solution

########Bigdecimal is the problem!!!

def is_fibonacci?(num)
	raise ArgumentError.new("this fibonacci test doesn't check for negative numbers") if num < 0 
	
formula1 = ((5*num**2)+4)**0.5
formula2 = ((5*num**2)-4)**0.5

if num.class == Bignum || num.class == Bignum
	
	if formula1.class == Float || formula2.class == Float
		return false
	else 
		return true
	end

elsif formula1%1 == 0 || formula2%1 == 0
		return true
	else 
		return false
	end

end

puts is_fibonacci?(8670007398507948658051921)
puts is_fibonacci?((927372692193078999171)

# puts is_fibonacci?(8)

# puts is_fibonacci?(21)

# puts is_fibonacci?(0)



# 1. DRIVER TESTS GO BELOW THIS LINE


# def random_fibonacci
#    [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946].sample
# end

# def assert
# 	raise "something is wrong" unless yield 
# end

# # assert {is_fibonacci?(random_fibonacci) == true}

# assert {is_fibonacci?(8670007398507948658051921) == true}
  
# # assert {is_fibonacci?(random_fibonacci+100) == false}

# assert {is_fibonacci?(927372692193078999171) == false}




# 5. Reflection 