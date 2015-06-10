class PetitionsController < ApplicationController

	def index
		@petitions = Petition.get_petitions
	end
end 