# students = ["James Jalandoni", "John Elliott", "Brandon Ehrgood", "Oscar Bonilla", "Ruchi Malik", "Adrien Kalombo", "Kayla Chapman", "Sean Large", "Daniel Bonilla", "Max Lewis", "Matthew Liu", "Stacy Banks", "Tim Montgomery", "Matt Molli", "Paul Turaew", "Kenn Miller", "Babak Pouradam", "Kelsey Woodard", "Steven Fleming", "Erwin Rosas", "Camelia Rosu", "Lydia Stamato"]

# # puts students.shuffle[0]
# # puts students.index("Tim Montgomery")
# # puts students[4]
# # puts students.join(" | ")
# # students.each do |name|
# #     puts name.split[1]
# #   end


# students.each do |name|
#   puts name if name[0] == "M"
# end


people = [ 
  {:name => "Stacy", :money => 5, :plays_instrument => true},
  {:name => "Daniel", :money => 10, :plays_instrument => false},
  {:name => "Oscar", :money => 80, :plays_instrument => true},
  {:name => "Kayla", :money => 20, :plays_instrument => false},
  {:name => "Brandon", :money => 20, :plays_instrument => false},
  {:name => "John", :money => 90, :plays_instrument => false},
  {:name => "Steven", :money => 10, :plays_instrument => true},
  {:name => "James", :money => 15, :plays_instrument => false},
  {:name => "Adrien", :money => 8, :plays_instrument => false},
  {:name => "Sean", :money => 7, :plays_instrument => true},
  {:name => "Max", :money => 35, :plays_instrument => true},
  {:name => "Matthew", :money => 12, :plays_instrument => true},
  {:name => "Ruchi", :money => 75, :plays_instrument => false},
  {:name => "Kenn", :money => 27, :plays_instrument => true},
  {:name => "Matt", :money => 35, :plays_instrument => true},
  {:name => "Tim", :money => 11, :plays_instrument => true},
  {:name => "Babak", :money => 15, :plays_instrument => false},
  {:name => "Erwin", :money => 7, :plays_instrument => true},
  {:name => "Camelia", :money => 35, :plays_instrument => true},
  {:name => "Lydia", :money => 102, :plays_instrument => true},
  {:name => "Paul", :money => 75, :plays_instrument => false},
  {:name => "Kelsey", :money => 17, :plays_instrument => true},
]
# 1. 
# highest_paid = people[0]
# people.each do |name|
#   if highest_paid[:money] < name[:money]
#     highest_paid = name
#   end
# end
# puts highest_paid

# OR

# puts people.sort { |x,y| x[:money] <=> y[:money] } [-1]

# 2.
# musicians = []
# people.each { |person| musicians << person if person[:plays_instrument]}
# puts musicians

# if musicians.length >= 5
#   puts "Lets start a band!"
# end

# 3.

# six = 6 

# six += 3

bank = 0
peeps = 0
people.each do |person_hash|
  if bank < 350
   bank += person_hash[:money]
   peeps += 1
  end
end

puts peeps

if bank > 350
  puts "We have enough money to get the drum set!"
else
  puts "Yo @$$ broke!!"
end

# moneys = person[{:money}]

# bank = []
# bank = sum(people[:money])
# people[:money]}
# if bank > 350
#   puts "Lets's buy a drum!"
# else 
#   "Yo @ss broke!"
# end 




