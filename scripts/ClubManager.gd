extends Node

## Main manager for the club simulation.
## Attach this to the root of the main scene.

var hostesses: Array[Hostess] = []
var money: int = 1000
var fans: int = 0
var on_shift: bool = false

func _ready() -> void:
	print("Cabaret Club Sim started")
	_create_sample_hostesses()

func _create_sample_hostesses() -> void:
	var yuki = Hostess.new()
	yuki.hostess_name = "Yuki"
	yuki.rank = "Platinum"
	yuki.talk = 70
	yuki.cute = 3
	yuki.beauty = 2
	hostesses.append(yuki)
	
	var ai = Hostess.new()
	ai.hostess_name = "Ai"
	ai.rank = "Platinum"
	ai.party = 75
	ai.love = 65
	ai.sexy = 2
	hostesses.append(ai)
	
	print("Created ", hostesses.size(), " sample hostesses")

func start_shift() -> void:
	on_shift = true
	print("Shift started. Money: ", money, " | Fans: ", fans)

func assign_hostess_to_customer(hostess: Hostess, customer: Customer) -> float:
	var compat = hostess.get_compatibility(customer.preference)
	var spend = customer.get_spend_multiplier() * compat * 100
	money += int(spend)
	fans += int(compat * 10)
	hostess.drain_hp(10)
	return spend

func end_shift() -> void:
	on_shift = false
	print("Shift ended. Money: ", money, " | Fans: ", fans)
	for h in hostesses:
		if not h.on_duty:
			h.rest()
