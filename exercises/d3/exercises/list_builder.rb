puts "welcome to list builder!"
list = []
while (x=1)
	puts "what can I add?"
	item = gets.strip.to_s
	list << item
	puts "added! you're list is"
	puts list.to_s
end 