require 'date'

class Petition < ActiveRecord::Base

	def self.get_petitions
		response = RestClient.get("https://api.whitehouse.gov/v1/petitions.json?limit=5")
		parsed_response = JSON.parse(response)
		parsed_response = parsed_response["results"]

		petitions = parsed_response.map do |petition| 
			new_petitions = {
			title: petition["title"],
			body: petition["body"],
			url: petition["url"],
			deadline: Time.at(petition["deadline"]),
			status: petition["status"],
			created: Time.at(petition["created"]),
			signatureCount: petition["signatureCount"]
			}
	end end

end
