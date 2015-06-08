puts "hey bru, let's comute some quadform."

puts "give me A:"

a = gets.strip.to_f

puts "give me B:"

b = gets.strip.to_f

puts "give me C:"

c = gets.strip.to_f


sqrt_num = b*b-4*a*c

if ((a == 0) || (sqrt_num < 0))
	puts "No solutions"
elsif (sqrt_num == 0)
	x1 = (-b/(2*a))
	puts x1
		
		else
			
x_pos = (-b + (Math.sqrt(sqrt_num)))/(2*a)

x_neg = (-b - (Math.sqrt(sqrt_num)))/(2*a)

puts "computing..."

puts "Your x value is either"

puts "#{x_pos} or #{x_neg}, Goodbye!"

end 