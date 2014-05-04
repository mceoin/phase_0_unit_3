// U3.W8-9: 


// I worked on this challenge [by myself, with: SEB ].

// 2. Pseudocode
// goal: create shopping list
// create function groceryList that takes an indefinite amount of arguments (our grocery items)
// puts shopping list within the method (we want it as a list, hence puts!)

// User Stories
// As a user, I want to be able to add an undefined number of items, with an undefined quantity per item
// As a user, I want to be able to remove an item from my shopping list.
// As a user, I want to be able to print my shopping list.

// 3. Initial Solution
// in ruby

// class ShoppingList
// 	attr_accessor :items

// 	def initialize(*items)
// 		:items
// 	end

// 	def add(*items)
// 		@items << items
// 	end	

// 	def display
// 		puts "Shoppling List: "
// 		@items.flatten.each_with_index {|v, i| puts "#{i+1}. #{v}"}
// 	end

// 	def delete(items)
// 		@items.delete(items)
// 	end

// end

// HungryList = ShoppingList.new("Bannana")
// HungryList.display

// HungryList.add("peanut")
// HungryList.display


// 4. Refactored Solution

var shoppingList = new function() {
	var list = [];

	this.addItem = function(item) {
		list.push(item);
	}

	this.displayList = function() {
		console.log(list);
	}

	this.removeItem = function(item) {
		for (var i = 0; i <= list.length; i++) {
			if (item === list[i]){
				list.splice(i,1);
			}
		}
	}

}


// shoppingList.removeItem("pear")

shoppingList.displayList()

// pseudocode (removing items from a list)
// 1. search through array of items, looking for "word"
// 2. when found, delete "word" 

// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

///Okay, we just couldn't get this working for ages... then we called in a DBC tutor who was all like "oh no, this isn't going to work, better not to do testing in javascript until you get to Jasmine. So we stopped there"
// shoppingList.addItem("apple")
// console.log(list === ["apple"])

// shoppingList.addItem("banana")
// shoppingList.addItem("cherry")
// shoppingList.addItem("cheese")
// console.log(shoppingList.displayList() === [ 'apple', 'banana', 'cherry', 'cheese' ])
// shoppingList.removeItem("banana")
// console.log(shoppingList.displayList() === [ 'apple', 'cherry', 'cheese' ])

// shoppingList.addItem("bannana")
// shoppingList.addItem("apple")
// shoppingList.addItem("pear")
// shoppingList.addItem("peach")
// shoppingList.addItem("milk")

// 



// 5. Reflection 

// delete is no good, as it leaves a trace of teh object inside my array through "undefined", so we switched to splice
// Not being able to define a method that takes an unknown number of arguments is a major pain in the ass. Worse, switching between JS & Ruby is freaking hard.