def getting_user_info
    puts "Do you drink? Yes or no?"
    user_answer = gets.chomp
    if user_answer == "yes"
        puts "What is your age?"
        user_age = gets.chomp.to_i
    else
      user_age == "no"
end

def drinking_age(user_age)
    if user_age != Integer
        puts "ok bye"
    elsif user_age < 21
        puts "Your young"
        false
    else
        puts "you are good to go!"
        true
    end
end