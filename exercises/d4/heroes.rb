hero = {

name: "Rosalie",
health: 100,
power: 10,
items: ["Sword", "Dagger", "Shield"],
exp: 1
}

monsters = [
	{ 
		name: "MadMax",
		health: 99,
		power: 9,
		type: "Salman"
	},
	{
		name: "Rafi",
		health: 99,
		power: 9,
		type: "Salman"
	},
	{
		name: "Kevin",
		health: 99,
		power: 9,
		type: "Salman"
	}
]

def attack (attacker, defendant)
	defendant[:health] -= attacker[:power]

	unless attacker[:exp].nil? 
	attacker[:exp] += 1
	end 
end 

puts monsters[0][:health]
attack(hero, monsters[0])
puts monsters[0][:health]