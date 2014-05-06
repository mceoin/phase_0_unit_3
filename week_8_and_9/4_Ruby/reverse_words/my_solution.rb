# U3.W8-9: Reverse Words


# I worked on this challenge [by myself, with: Adam Dziuk].

# 2. Pseudocode
#take a string as an argument
#split the string into individual words by spaces " " that will return as an array (e.g. array = string.split)// commas might cause a problem here
#reverse the order of each object in the array - probably using .each &/or .map
#Return the array as a single string that joins all objects by space " "


# 3. Initial Solution

def reverse_words(sentence)
   split_sentence = sentence.split(" ").map(&:reverse).join(" ")
end


# 4. Refactored Solution

def reverse_words(sentence)
   sentence.split(" ").map(&:reverse).join(" ")
end


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def assert
  raise "Assertion failed!" unless yield
end

sentence = "I ate my sandwich."
assert { reverse_words(sentence) == "I eta ym .hciwdnas" }

sentence = "rotavator"
assert { reverse_words(sentence) == "rotavator".


# 5. Reflection 