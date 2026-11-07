class_name Hostess
extends Resource

## A hostess who can be assigned to customers.

@export var hostess_name: String = "New Hostess"
@export var rank: String = "Bronze"  # Bronze, Silver, Gold, Platinum
@export var level: int = 1

# Performance stats
@export var hp: int = 100
@export var max_hp: int = 100
@export var talk: int = 50
@export var party: int = 50
@export var love: int = 50
@export var skill: int = 50

# Appearance traits (0-3 scale roughly matching X/△/○/◎)
@export var sexy: int = 1
@export var beauty: int = 1
@export var cute: int = 1
@export var funny: int = 1

@export var mood: int = 3  # 0=bad to 4=great
@export var on_duty: bool = false

func get_compatibility(customer_preference: String) -> float:
	match customer_preference:
		"Talk":
			return talk / 100.0
		"Party":
			return party / 100.0
		"Love":
			return love / 100.0
		"Skill":
			return skill / 100.0
		_:
			return 0.5

func drain_hp(amount: int) -> void:
	hp = max(0, hp - amount)
	if hp < 30:
		mood = max(0, mood - 1)

func rest() -> void:
	hp = max_hp
	mood = min(4, mood + 1)
