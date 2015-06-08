class Monster 
	def initialize(name, health, power, type)
		@name = name
		@health = health
		@power = power
		@type = type
	end
	def attack (defendant)
		defendant[:health] -= @power
	end 
end 