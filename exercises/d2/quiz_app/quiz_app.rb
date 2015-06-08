puts "Welcome to Matt's mini quiz"

points = 0
if (points == 1)
	point_or_points = "point"
else 
	point_or_points = "points"
end 
	

puts "Q1: What state am I from?"

a1 = gets.strip

if (a1 == "Virginia" || a1 == "virginia" || a1 == "VA" || a1 == "va")
	points = 1

	if (points == 1)
	point_or_points = "point"
else 
	point_or_points = "points"
end 

	puts "That is correct, you have #{points} #{point_or_points}"

else 
	points = 0 
	if (points == 1)
	point_or_points = "point"
else 
	point_or_points = "points"
end 
	puts "That is not correct, I am from Virginia... You have #{points} #{point_or_points}"
end


puts "Q2: How many siblings do I have?"

a2 = gets.strip.to_i

if (a2 == 2)
	points=points+1 
	if (points == 1)
	point_or_points = "point"
else 
	point_or_points = "points"
end 
	puts "That is correct, you have #{points} #{point_or_points}"

else 
	if (points == 1)
	point_or_points = "point"
else 
	point_or_points = "points"
end 
	puts "That is not correct, I have two siblings... You have #{points} #{point_or_points}"
end

puts "Q3: How old am I?"

a3 = gets.strip.to_i

if (a3 == 20)
	points=points+1 
	if (points == 1)
	point_or_points = "point"
else 
	point_or_points = "points"
end 
	puts "That is correct, you have #{points} #{point_or_points}"

else 
	if (points == 1)
	point_or_points = "point"
else 
	point_or_points = "points"
end 
	puts "That is not correct, I am 20 years old... You have #{points} #{point_or_points}"
end

puts "Thanks for playing, you ended with #{points} #{point_or_points}"