puts "Hello!"

puts "How old are you?"

your_age = gets.strip.to_f

puts "How old is your mom?"

moms_age = gets.strip.to_f

puts "How old is your dad?"

dads_age = gets.strip.to_f

average = (dads_age+moms_age+your_age)/3

puts "Thanks, the average age of your family is #{average} years old!"

puts "Goodbye!"



