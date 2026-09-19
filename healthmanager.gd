extends Node
#Signal health_changet(new_health)
var  player_health := 100
@onready var score : int



func damage_player(amount: int):
	player_health -= amount
	player_health = max(player_health,0)
	
	

	
		

		
