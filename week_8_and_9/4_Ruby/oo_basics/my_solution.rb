# U3.W8-9: OO Basics: Student


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode



# 3. Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(args)   #Use named arguments!
    #your code here
  end
end

# def findStudent(array)
# 	array.each do |i| 
		


# function findIndex(values, target) {
#   for(var i = 0; i < values.length; ++i){
#     if (values[i] == target) { return i; }
#   }
#   return -1;
# }
# findIndex([7, 3, 6, 1, 0], 6)

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# Tests for release 0:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Tests for release 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Tests for release 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1





# 5. Reflection 