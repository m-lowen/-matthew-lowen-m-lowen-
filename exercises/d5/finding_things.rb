def index_of (string, letter) 
	length = string.size
	count = 0
	while (string[count] != letter && length > count) 
 		count += 1
 		
 	end

 	if !(string.include? letter) 
 		puts -1
 	else 
 		puts count 
 	end 
end 

index_of("abcdefgh", "h")

def find_by_name (people, name)

	size = people.size 
	count = 0
	while (size > count)
		if (people[count][:name] == name)
			puts "#{people[count][:id]}, #{people[count][:name]}"
			break
			else 
			count += 1
		end  
	end 
		puts "nil"
end 
	people = [
		{
			:id => 1,
			:name => "bru"
		},
		{
			:id => 2,
			:name => "ski"
		},
		{
			:id => 3,
			:name => "brunette"
		},
		{
			:id => 4,
			:name => "ski"
		}
	]

	find_by_name(people, "brune")


