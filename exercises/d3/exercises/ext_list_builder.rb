puts "welcome to container builder!"
 
list =[]
truth = true
while truth
	puts "What can I do for you?"
	command = gets.strip.downcase
	command = command.split
	if (command[0] == "add")
		list << command[1]
		puts "Added! Your list is:"
		puts list.to_s
	elsif (command[0] == "remove")
			list.delete(command[1])
			puts "Removed! Your list is:"
			puts list.to_s
	elsif (command[0] == "quit")
		puts "Bye!"
		truth = false
	end 
end 