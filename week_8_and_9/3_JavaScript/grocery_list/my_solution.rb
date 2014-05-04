class ShoppingList
	attr_accessor :items

	def initialize(*items)
		@items = items
	end

	def add(*items)
		@items << items
	end	

	def display
		puts "Shopping List: "
		@items.flatten.each_with_index {|v, i| puts "#{i+1}. #{v}"}
	end

	def delete(items)
		@items.delete(items)
	end

end

HungryList = ShoppingList.new("Bannana")
HungryList.display

HungryList.add("peanut")
HungryList.display