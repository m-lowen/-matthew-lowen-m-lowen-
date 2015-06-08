# map.rb

engines = ["Google", "Bing", "Ask Jeeves"]


result = engines.map do |e|
  if e == "Google"
     "OK"
  elsif e == "Bing"
   	"Bad!"
  else
    "What is that?"
  end
end

puts result.to_s
# => ["OK", "Bad!", "What is that?"]