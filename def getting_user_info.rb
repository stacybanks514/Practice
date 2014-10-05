# def getting_user_info
#     puts "Do you drink? Yes or no?"
#     user_answer = gets.chomp
#     if user_answer == "yes"
#         puts "What is your age?"
#         user_age = gets.chomp.to_i
#     else
#         user_age == "no"
#     end

#     def drinking_age(user_age)
#         if user_age != Integer
#             puts "ok bye"
#         elsif user_age < 21
#             puts "Your young"
#             false
#         else
#             puts "you are good to go!"
#             true
#         end
#     end
# end


# def getting_user_info
#     puts "Do you drink? Yes or no?"
#     user_answer = gets.chomp
#     if user_answer == "yes"
#         puts "What is your age?"
#         user_age = gets.chomp.to_i
#     else
#       user_age.to_s
#     end
# end

# def drinking_age(user_age)
#     if user_age.is_a? String
#         puts "ok bye"
#     elsif user_age < 21
#         puts "Your young"
#         false
#     else
#         puts "you are good to go!"
#         true
#     end
# end

# drinking_age(getting_user_info)






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

# Who has the most money?
# go through each hash, find the money key, order the values, return the first value
# sorted = people.sort_by { |x| x[:money]}
# puts sorted.last[:name]
# OR
# puts people.max_by{|x| x[:money]}
# OR
# a = people.max_by {|i| i[:money]}
# puts "#{a[:name]} #{a[:money]}"

# If we have at least 5 people that play instruments we can start a band. Can we?
# music = people.sort_by {|musician| musician if musician[:plays_instrument] == true}
# puts "#{music[:name]} can play an instrument."

# If a new drum set costs $350, do we have enough money to buy one?


