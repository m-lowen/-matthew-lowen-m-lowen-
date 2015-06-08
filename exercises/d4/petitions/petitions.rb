require 'rest-client'
require 'json'


offset = 0
# greet the user
puts "hello, welcome to this app called petitions"

puts "what kind of petitions? ('open' or 'closed')"

status = gets.strip

puts "Showing petitions of status: #{status}..."

# get the petitions 
while true
	response = RestClient.get "https://api.whitehouse.gov/v1/petitions.json?status=#{status}&offset=#{offset}"

	parsed_response = JSON.parse(response)

	petitions = parsed_response["results"]

	if (petitions.empty?)
		puts "no more petitions to show"
		break 
	end 

	puts 
	# print each petition
	petitions.each_with_index do |petition, index|
		puts "#{index + 1 + offset}. #{petition["title"]}, [#{petition["status"].upcase}]"
	end 

	offset += 10
	puts "Would you like to see more? (y/n)"


	break if (gets.strip=='n')

end 
# k bye
puts  
puts "thanks, cya"
