# # SCOPE (what objects have access to...)
# Blocks: local variables, method variables, @instance, @@classes, $global
# Methods: method variables, @instance, @@classes, $global
# Instances: @instance, @@classes, $global
# Classes: @@classes, $global
# Global: $Global
# 
# 
# 
#
# ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**
# ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**
# ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**
# ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**
# ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**
# ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**
# ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**ARRAYS**
# this is how you crete a new array:    []   or   Array.new
# 
# You can add integers and strings in an array: [1, 'two', 3, 'four', 5]
# Arrays in Ruby allow you to store any kind of objects in any combination with no restrictions on type. 
# 
# Looking up values within an array is easily done using an index. Like most languages, arrays in Ruby have indexes starting from 0. 
# [1, 2, 3, 4, 5][2]
# => 3
# 
# Array indexes can also start from the end of the array, rather than the beginning! In Ruby, this is achieved by using negative numbers. This is called reverse index lookup. In this case, the values of the index start at -1 and become smaller. The example below returns the first value in the array.
# [1, 2, 3, 4, 5][-5]
# => 1
# [1, 2, 3, 4, 5][-1]
# => 5
# 
# In Ruby, the size of an array is not fixed. Also, any object of any type can be added to an array, not just numbers. How about appending the String "woot" to an array? Try using << - that's the 'append' function - to add it to the array below.
# [1, 2, 3, 4, 5,] << "woot"
# => [1, 2, 3, 4, 5, "woot"]
# you will always find multiple ways to perform the same action in Ruby. To append a new element to a given array, you can also use push method on an array. Add the string "woot" to given array by calling push.
# [1, 2, 3, 4, 5,].push("woot")
# => [1, 2, 3, 4, 5, "woot"]
# 
# .map
# In Ruby, the method map is used to transform the contents of an array according to a specified set of rules defined inside the code block. 
# The result is an entirely new array containing the results. 
# [1, 2, 3, 4, 5].map { |i| i + 1 }
# => [2, 3, 4, 5, 6]
# [1, 2, 3, 4, 5].map { |x| x * 3 }
# => [3, 6, 9, 12, 15]
# 
# Filtering elements in a collection according to a boolean expression is a very common operation in day-to-day programming. Ruby provides the rather handy select method to make this easy.
# The method select is the standard Ruby idiom for filtering elements.
# [1,2,3,4,5,6].select {|number| number % 2 == 0}
# => [2, 4, 6]
# names = ['rock', 'paper', 'scissors', 'lizard', 'spock']
# names.select {|word| word.length > 5}
# => ["scissors", "lizard"]
# 
# to delete something in an array, use the .delete method
# [1,3,5,4,6,7].delete(5)
# => 5
# It will return the element that was deleted from the array
# What if you want to delete all the elements less than 4 from the given array? Use the .delete_if{}
# [1,2,3,4,5,6,7].delete_if{|i| i < 4 }
# => 4, 5, 6, 7
# if you are using the .delete_if, it will return the elements that were not deleted
# [1,2,3,4,5,6,7,8,9].delete_if { |x| x%2 == 0}
# [1, 3, 5, 7, 9]
# 
# For loops in arrays
# array = [1, 2, 3, 4, 5]         (i is the placeholder in the for loop for all the elemnts in array)
# for i in array
#   puts i
# end
# => 1 2 3 4 5
# def array_copy(source)
#   destination = []
#   for x in source
#     if x < 4
#       destination << x
#     end 
#   end
#   return destination
# end
# passing [1, 2, 3, 4, 5] to array_copy returns [1,2,3] 
# passing [-23, 12, 0, 19] to array_copy returns [-23, 0]
# 
# The Array#each method accepts a block to which each element of the array is passed in turn.
# array = [1, 2, 3, 4, 5]
# array.each do |i|
#   puts i
# end
# => 1 2 3 4 5 
# 
# 




# HASH**HASH**HASH**HASH**HASH**HASH**HASH**HASH**HASH**HASH**HASH**HASH
# HASH**HASH**HASH**HASH**HASH**HASH**HASH**HASH**HASH**HASH**HASH**HASH
# HASH**HASH**HASH**HASH**HASH**HASH**HASH**HASH**HASH**HASH**HASH**HASH
# HASH**HASH**HASH**HASH**HASH**HASH**HASH**HASH**HASH**HASH**HASH**HASH
# HASH**HASH**HASH**HASH**HASH**HASH**HASH**HASH**HASH**HASH**HASH**HASH
# 
# A Hash is a collection of key-value pairs. You retrieve or create a new entry in a Hash by referring to its key. 
# Hashes are also called 'associative arrays', 'dictionary', 'HashMap' etc. in other languages
# A blank hash can be declared using two curly braces {}
# 
# student_ages = {
#   "Jack" => 10,
#   "Jill" => 12,
#   "Bob" => 14
# }
# keys = "Jack", "Jill", "Bob"
# values = 10,    12,     14
# 
# restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Tea" => 2}
# 
# You can retrieve values from a Hash object using [] operator. The key of the required value should be enclosed within these square brackets.
# 
# restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Tea" => 2}
# restaurant_menu["Ramen"]
# => 3
# 
# Once you've created a Hash object, you would want to add new key-value pairs as well as modify existing values.
# Here is how you would set the price of a "Ramen" in the restaurant_menu hash:
# restaurant_menu["Ramen"] = 3
# 
# In fact, you can create a blank hash and add all the values later.
# restaurant_menu = {}
# restaurant_menu["Dal Makhani"] = 4.5
# restaurant_menu["Tea"] = 2
# 
# You can use the each method to iterate over all the elements in a Hash. However unlike Array#each, when you iterate over a Hash using each, it passes two values to the block: the key and the value of each element.
# restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
# restaurant_menu.each do | item, price |
#   puts "#{item}: $#{price}"
# end
# => Ramen: $3
# Dal Makhani: $4
# Coffee: $2
# 
# The restaurant is doing well, but it is forced to raise prices due to increasing costs. Use the each method to increase the price of all the items in the restaurant_menu by 10%.
# Remember: in the previous example we only displayed the keys and values of each item in the hash. But in this exercise, you have to modify the hash and increase the value of each item.
# restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
# restaurant_menu.each do |item, price|
#   restaurant_menu[item] = price + (price * 0.1)
# end
# 
# Ideally, any transformation of a collection (like in the example above) should produce a new collection with the original unchanged making the code easier to understand and manage.
# However, speed and memory considerations often (and usually wrongly) trump maintainability and so the approach above is used quite frequently.
# 
# Every Hash object has two methods: keys and values. The keys method returns an array of all the keys in the Hash. Similarly values returns an array of just the values.
# restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
# restaurant_menu.keys
# 
# There are some little-known shortcuts for creating new hashes. They all provide a slightly different convenience. The latter two generate a hash directly from pre-existing key-value pairs. The first simply sets a default value for all elements in the hash.
# normal = Hash.new
# was_not_there = normal[:zig]
# puts "Wasn't there:"
# p was_not_there
# => Wasn't there:
# nil
# 
# usually_brown = Hash.new("brown")                  the Hash.new("brown") is setting the default value for all the keys that are made but dont have a value
# pretending_to_be_there = usually_brown[:zig]
# puts "Pretending to be there:"
# p pretending_to_be_there
# => Pretending to be there:
# "brown"
# 
# As you can see, where a "normal" hash always returns nil by default, specifying a default in the Hash constructor will always return your custom default for any failed lookups on that hash instance.
# 
# The other two shortcuts actually use the Hash class's convenience method: Hash::[]. They're fairly straight-forward. The first takes a flat list of parameters, arranged in pairs. The second takes just one parameter: an array containing arrays which are themselves key-value pairs. Whew! That's a mouthful. 
# chuck_norris = Hash[:punch, 99, :kick, 98, :stops_bullets_with_hands, true]
# p chuck_norris
# => {:punch=>99, :kick=>98, :stops_bullets_with_hands=>true}
# 
# You have to now use the second form the "new hash" shortcut in this exercise. Again, it takes an array of key-value pairs. These key-value pairs will just be 2-element arrays. I'll give you the key-value pairs to start with. Your objective is to build a Hash out of this array.
# def artax
#   a = [:punch, 0]
#   b = [:kick, 72]
#   c = [:stops_bullets_with_hands, false]
#   key_value_pairs = [a, b, c]
#   Hash[key_value_pairs]
# end
# p artax
# => {:punch=>0, :kick=>72, :stops_bullets_with_hands=>false}
# 




# CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**
# CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**
# CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**
# CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**
# CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**
# CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**CLASSES**
# 
# At this point, one may wonder if all objects are the same. Are the groupings we've already covered - numbers, strings, arrays - supported by the Ruby language?
# Ruby does in fact allow one to define groups of objects, or, to use object oriented jargon, classes of objects.
# One may look up the class of any object by simply calling the class method on it. Let's try it out with a few of the objects we're already familiar with.
# puts 1.class
# puts "".class
# puts [].class
# => Fixnum
# String
# Array
# 
# As you can see, Ruby tells us what we already suspected - that 1 is a Fixnum (a special case of Integer), "" is a String and [] is an Array.
# We can also turn this interrogation around. Here, we'll ask whether an object is_a? particular class.
# puts 1.is_a?(Integer)
# puts 1.is_a?(String)
# =>true
# false
# 
# An important feature of classes in Ruby is that they too adhere to the "everything is an object philosophy." 
# So, in Ruby, classes themselves are simply objects that belongs to the class Class. Here's a simple example that demonstrates this fact:
# 1.class.class
# => Class
# 
# In Ruby, like other class-based object oriented languages that you may already be familiar with, classes act as the factories that build objects. An object built by a certain class is called 'an instance of that class.' Typically, calling the new method on a class results in an instance being created.
# Let's build an instance of the most basic kind of object by calling the method new on the object Object
# Object.new
# 
# This object - or instance, to be more precise - can't do very much. However, instances of more powerful classes like Arrays and Strings can do a whole lot more as we'll see in other lessons. You will also learn to create your own classes which you can then use to build bigger and more powerful programs.
# Let us start by building a class of our very own. Of course, a class needs a job or a role that its instances fulfill, or we have no reason to create one. Let us start by creating a class that represents a simple geometric Rectangle.
# class Rectangle
# end
# 
# This class is as yet incomplete. For a class to justify its existence, it needs to have two distinct features:
# State
#   A class must have some kind of state that defines the attributes of its instances. In the case of a simple rectangle, this could simply be its length and breadth.
# Behaviour
#   A class must also do something meaningful. This is achieved by the programmer adding methods to the class that interact with its state to give us meaningful results.
# 
# "What is your perimeter?" and "What is your area?" sound like an interesting questions to ask of a rectangle. This behaviour will be defined as methods on the class Rectangle. Starting from the behaviour and working backward is an excellent way to understand exactly what state we need, something we shall address in the next section. Since this is the first time you're creating a method, let me demonstrate this for you with the perimeter, and then you can try adding the area yourself.
# class Rectangle
#   def perimeter
#   end
# end
# The keyword def is what we use to create a method called perimeter. You will observe that Ruby follows a two-space indentation convention and sections of code are typically closed using the keyword end. Note that both the class and the method are closed in this manner. Of course, this class still does nothing, because all we have is a stateless class with an empty method. Let us now try to fill up this empty method with the formula for the perimeter of a rectangle, which is 2 * (length + breadth).
# class Rectangle
#   def perimeter
#     2 * (@length + @breadth)
#   end
# end
# 
# You'll notice that the variable names length and breadth have an @ symbol placed in front of them. This is a convention which designates them as being a part of the state of the class, or to use jargon, they are the "instance variables of the class." This means that every instance of the class Rectangle will have its own unique copies of these variables and is in effect, a distinct rectangle.
# If you actually run this code, though, you'll see that it fails. Try adding Rectangle.new.perimeter to the end of the previous example. See what happens? @length and @breadth don't have values yet because we have no way to initialize them. Lets remedy this now.
# class Rectangle
#   def initialize(length, breadth)
#     @length = length
#     @breadth = breadth
#   end

#   def perimeter
#     2 * (@length + @breadth)
#   end
# end
# => nil
# 
# Observe the tests for this piece of code carefully - you'll notice that we can now create instances of Rectangle that correctly tell us their perimeter.
# 
# It's your turn now - extend this class to add a method that calculates area using the formula length * breadth.
# class Rectangle
#   def initialize(length, breadth)
#     @length = length
#     @breadth = breadth
#   end

#   def perimeter
#     2 * (@length + @breadth)
#   end

#   def area
#     @length * @breadth
#   end
# end
# 
# 
# METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**
# METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**
# METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**
# METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**
# METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**METHODS**
# 
# We've already talked about how objects in Ruby are analogous to objects in the real world. We've also briefly covered how they interact with one another through a construct called a "method." Since everything useful in a program happens through objects collaborating using methods, understanding them well is very important.
# When one object calls a method on another, it is simply telling it what to do. A method, then, is simply programming jargon for something one object can do for another.
# In the example below, we ask the object that represents the integer 1 to give us the next integer in the sequence. Do keep in mind that in the context of the program, "we" simply means the current object.
# puts 1.next
# => 2
# 
# So, to summarize, the data an object contains is what it is and its methods are what it can do. Implicit in this definition is the fact that the abilities of an object are limited to the methods it exposes.
# 
# Methods aren't exempt from Ruby's "everything is an object" rule. This means that the methods exposed by any object are themselves objects, and yes, you can use them as such.
# All objects in Ruby expose the eponymous method method that can be used to get hold of any of its methods as an object.
# puts 1.method("next")
# =>#<Method: Fixnum(Integer)#next>
# 
# Here, we ask the object that is the integer 1 to give us the instance of the method next.
# The method object still maintains a relationship with the object to which it belongs so you can still call it using the eponymous call method and it responds like a normal invocation of that method.
# next_method_object = 1.method("next")
# puts next_method_object.call
# => 2
# It's worth noting that in the normal course of things it is unlikely that you will need to - or should - look up a method object and use it as such.
# 
# Let's write a method called reverse_sign that takes one object - an Integer - and changes a positive value to negative one, and vice-versa. We'll then dissect it, then move on to you practicing writing your own method.
# def reverse_sign(an_integer)
#   return 0 - an_integer
# end

# puts reverse_sign(100)
# puts reverse_sign(-5)
# => -100
# 5
# 
# 
# 
# 
# SPLAT**SPLAT**SPLAT**SPLAT**SPLAT**SPLAT**SPLAT**SPLAT**SPLAT**
# SPLAT**SPLAT**SPLAT**SPLAT**SPLAT**SPLAT**SPLAT**SPLAT**SPLAT**
# The list of parameters passed to an object is, in fact, available as a list. To do this, we use what is called the splat operator - which is just an asterisk (*).
# The splat operator is used to handle methods which have a variable parameter list. Let's use it to create an add method that can handle any number of parameters.
# We use the inject method to iterate over arguments, which is covered in the chapter on Collections. It isn't directly relevant to this lesson, but do look it up if it piques your interest.
# def add(*numbers)
#   numbers.inject(0) { |sum, number| sum + number }
# end

# puts add(1)
# puts add(1, 2)
# puts add(1, 2, 3)
# puts add(1, 2, 3, 4)
# => 1
# 3
# 6
# 10
# 
# The splat operator works both ways - you can use it to convert arrays to parameter lists as easily as we just converted a parameter list to an array.
# I'll show you how we can splat an array of three numbers into a parameter list so that it works with one of the examples from earlier in this lesson that accepts exactly three parameters.
# def add(a_number, another_number, yet_another_number)
#   a_number + another_number + yet_another_number
# end

# numbers_to_add = [1, 2, 3] # Without a splat, this is just one parameter
# puts add(*numbers_to_add)  # Try removing the splat just to see what happens
# => 6
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# SCOPE
# Blocks: local variables, method variables, @instance, @@classes, $global
# Methods: method variables, @instance, @@classes, $global
# Instances: @instance, @@classes, $global
# Classes: @@classes, $global
# Global: $Global
# 
# 
# 
# 
# 
# 
