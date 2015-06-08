puts "enter a number:"

num = gets.to_i
i = 3
result = [1,1]
truth = true

if (num == 1 || num == 2)
	puts "Fibonnaci at #{num}: 1"
	truth = false
end 

while (i <= num && truth)
result << (result[(result.size-1)]+result[(result.size-2)])
i = i + 1
end 


if (truth)
	puts "Fibonnaci at #{num}: #{(result[result.size-1])}"
end 