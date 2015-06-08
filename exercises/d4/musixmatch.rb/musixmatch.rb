require 'rest-client'
require 'json'

# These code snippets use an open-source library. http://unirest.io/ruby

  def get_no_ssl(url, headers={}, &block)
  RestClient::Request.execute(method: :get, url: url, headers: headers, verify_ssl: false, &block)
	end


puts "Please select an artist."
puts 

artist = gets.strip.downcase


response = RestClient.get "http://api.musixmatch.com/ws/1.1/track.search?apikey=430fcebc54c9328227fd1e44c58a4f1b&q_artist='#{artist}"

parsed_response = JSON.parse(response)

track = parsed_response["message"]

track = track["body"]

track = track["track_list"]


puts

if (track.size == 0)
	puts "Sorry no songs by that artist" 

else 

i=0 
song_list = ""
while (i < track.size)
	song = track[i]

	song = song["track"]

	name = song["track_name"]

	song_list = song_list + " " + name 

	i += 1
end 
puts "Songs by #{artist}..."
puts 
puts song_list
puts
puts song_list.size



key_k = "434d32b95b6d71d7341eac55a6a63575bcc93ae3"
# reply = RestClient.post "https://community-sentiment.p.mashape.com/#{song_list}/",
reply = get_no_ssl "https://www.tweetsentimentapi.com/api/?key=#{key_k}&text=#{song_list}"

parsed_reply = JSON.parse(reply)

reply = "The sentiment is #{parsed_reply["sentiment"]} with score #{parsed_reply["score"]}."

puts reply

if (parsed_reply["sentiment"] == "positive") 
	puts "You chose an optimistic artist."
else 
	puts "You chose a pessimistic artist."
end
end 


# puts name.class