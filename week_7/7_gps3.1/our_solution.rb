# U3.W7: GPS 3.1 Create an Electronic Grocery List
# Learning Competencies:
# Implement a basic Ruby class and identify when to use instance variables
# Identify the attributes and methods of a class based on user stories
# Identify tradeoffs between simple OO design patterns
# Summary
# In this challenge, you will create an electronic grocery list command-line application. Show off the object-oriented design principles you learned last week. You should spend time discussing tradeoffs with different designs. This is your grocery list, so get creative and have fun, but also make it great code!

# Release 0: User Stories
# With your partner, talk about what you would like to do with your grocery list. Start each statement with "As a user, I want to ..." These are what we call "user stories."

# As a user, I'd like to be able to make a shopping list, no harder than pencil & paper process
# As a user, I'd like to be able to add items to this shopping list, stating the quantity of each item
# As a user, I'd like to be able to remove items from my shopping list
# As a user, I'd like to be able to check what items remain in my shopping list (items that are yet to be purchased)

# Release 1: Pseudocode
# What objects, classes, and methods will you need to do each of the things you identified in your user stories?
# Create a class called shopping list that takes an argument
# Initialize shoppingList.new( )
# Create a method add item that takes an item, and quantity. e.g. item("apple"=> 5) --- otherwise known as a hash
# Create a method that prints all items in the shopping list, and quantity: output e..g apple x 5. If there are no items, print "no items left!"
# Create a method that allows you to remove items from the shopping list by quantity (e.g. "apple=> 3" )

# Release 2: Write Driver Code
# Translate your pseudocode into driver code. Write driver code at the bottom (to call the method on the object).

# Release 3: Initial Solution



class ShoppingList
    def initialize 
        @list = { }
    end
    
    def add(item, qty)
        @list[item]= qty
    end

    def remove(item, qty)
	   	quantity = @list[item]
	    new_quantity = quantity - qty
	    @list[item]=new_quantity
    end

    def print_list
    	puts "-----------------------"
    	puts "Shopping List:"
    	puts "-----------------------"
    	@list.each_pair {|key, value| puts "#{key} x #{value}"}
    	puts "-----------------------"
    end
    
end
    grocery_list = ShoppingList.new

    grocery_list.add("apple", 5)
    grocery_list.remove("apple", 5)
    grocery_list.add("tomato", 7)
    grocery_list.add("cherry", 100)
    grocery_list.add("pie", 6)

	grocery_list.print_list

#check for "string" key value in our grocery_list
#if key match , get value
#new value - old value = updated value


# Release 4: Refactor your solution
# With your partner, review the code. Is it DRY? Are the names good?

# Release 5: Reflect
# spent the better part of 15minutes trying to figure out why otherwise-working code wasn't working (capital letters are needed at the beginning o fa class)
# Emily was great - very encouraging, even when I ran into holes, and also keeping me on the more difficult path (using hashes to create a real shopping list instead of just accepting a single argument) - in reality, more experience with hashes and hindsight will show this wasn't a hard problem, but with better understanding of syntax should move pretty swiftly.
# Also, Emily made time to do this GPS so I could fit it in, so big thanks for that.
# you can't sort a hash by max value, unfortunately (as far as I can tell). The option available is to run a loop and reorganize it elsewhere.
# switching from Javascript to Ruby is tough. I need to create a cheat-sheet or pattern to repeat to remind myself of syntax quickly. Like a loop to ge tup to speed.

# Release 6: Sync your changes to Github!
# Release 6: Submit Feedback.