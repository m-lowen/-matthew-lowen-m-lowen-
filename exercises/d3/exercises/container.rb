puts "Welcome to container builder!"
 
list = {}
truth = true
while truth
	puts "What can I do for you?"
	command = gets.strip.downcase
	command = command.split

	if (command[0] == "add")

		if (list.has_key?(command[1]))
			list[command[1]]=list[command[1]]+1

		else 
			list["#{command[1]}"]=1

		end 
		puts "Added! Your list is:"
		puts list.to_s

	elsif (command[0] == "remove")

		if (list[command[1]]==1)
			list.delete(command[1])

		else 
			list[command[1]]=(list[command[1]]-1)

		end 
			puts "Removed! Your list is:"
			puts list.to_s

	elsif (command[0] == "quit")
		puts "Bye!"
		truth = false
	end 
end 