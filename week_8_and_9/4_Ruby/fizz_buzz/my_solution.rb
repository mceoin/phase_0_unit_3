# U3.W8-9: 


# I worked on this challenge [by myself, with: Seb ].

# 2. Pseudocode
#figure out correct command to replace an object in an array with a string
#define a method that takes an array
#go through array and test each integer to see if it is a multiple of 15, 5, or 3.
#if integer is a multiple, return correct string "fizz" or "buzz" or "fizzbuzz", otherwise return the number
#run the method, print a new array with my strings, making sure not to overwrite the first array

# 3. Initial Solution



def super_fizzbuzz(array)
fizzbuzzed = []
	array.each do |i| 
		if i % 15 == 0 
			fizzbuzzed << "fizzbuzz" 
		elsif i % 5 == 0 
			fizzbuzzed << "buzz"
		elsif i % 3 == 0
			fizzbuzzed << "fizz"
		else fizzbuzzed << i
		end
	end
	p fizzbuzzed
end

super_fizzbuzz([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16])


# 4. Refactored Solution






# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

# This returns an array of the given `size` containing random powers of `base`
# Since no power of 3 is ever a multiple of 5, this lets us create random arrays
# that contain multiples of 3 and no multiples of 5
def random_input_array(base, size)
  (1..size).map { |i| base**(1+rand(15)) }
end

def assert 
  raise "something's wrong" if yield
end

    assert {super_fizzbuzz(random_input_array(3,100)) == ["Fizz"]*100}

    assert {super_fizzbuzz(random_input_array(5,100)) == ["Buzz"]*100}

    assert {super_fizzbuzz(random_input_array(15, 100)) == ["FizzBuzz"]*100}

    assert {super_fizzbuzz([1,2,3]) == [1,2,'Fizz']}

    assert {super_fizzbuzz([15, 5, 3, 1]) == ['FizzBuzz', 'Buzz', 'Fizz', 1]}






# 5. Reflection 