# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge [by myself, with: Adam Dziuk].

# 2. Pseudocode
#Area - define method, area, that takes two integers as arguments, width & height, and multiplies them to return the area
#Perimeter - define a method, perimeter, which takes two integers as arguments, adds them together, and multiplies the result by 2 (hence: 2(a+b))
#Diagonal - define a method, diagonal, which takes two ingeters as arguments, and creates a third argument, diagonal, by getting the sqaure root of width**2 & height**2
# Square? - define method, square?, that takes two integers as arguments, "width" and "height", and if both are equal returns true, else false

# 3. Initial Solution
class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

    def area
        width*height
    end
    
    def perimeter
        2*width + 2*height
    end
    
    def diagonal
        Math.sqrt(width**2 + height**2)
    end
    
    def square?
        width == height
    end

  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end
end


# 4. Refactored Solution


#no place to refactor, we tired using symbols under initialize but that didn't work.



# 1. DRIVER TESTS GO BELOW THIS LINE

def assert
    raise "Assertion failed!" unless yield
end



assert { Rectangle.is_a? Class }
assert { Rectangle.method_defined? :area}
assert { Rectangle.method_defined? :diagonal}
assert { Rectangle.method_defined? :square?}
assert { Rectangle.method_defined? :perimeter}
assert { Rectangle.new(2,3).area == 6}
assert { Rectangle.new(2,3).diagonal == Math.sqrt(13)}
assert { Rectangle.new(2,3).perimeter == 10}
assert { Rectangle.new(2,3).square? == false}

# # 5. Reflection 
# Pretty straight forward. Haven't used Math in a while. 

# Adam was great to pair with - we stuck to Driver/Navigator dichotomy