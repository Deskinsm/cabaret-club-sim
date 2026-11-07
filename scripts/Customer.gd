class_name Customer
extends Resource

## A customer who visits the club and has preferences.

@export var preference: String = "Talk"  # Talk, Party, Love, Skill
@export var appearance_pref: String = "Sexy"  # Sexy, Beauty, Cute, Funny
@export var affluence: String = "Average"  # Poor, Average, Wealthy, Mega-Rich
@export var mood: int = 2  # Starts neutral
@export var time_remaining: float = 60.0

func get_spend_multiplier() -> float:
	var base = 1.0
	match affluence:
		"Poor":
			base = 0.6
		"Average":
			base = 1.0
		"Wealthy":
			base = 1.8
		"Mega-Rich":
			base = 3.0
	return base * (1.0 + mood * 0.25)
