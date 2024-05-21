extends Node2D

var screen_size : Vector2i
var PlayerInitialPosition


func _ready():
	screen_size = get_window().size
	PlayerInitialPosition = $Player.position 

func new_game():
	$Player.position = PlayerInitialPosition
	$Piso.position.x = 0
	
func game_over():
		GHUD.update_high_score_label()

func _process(delta):
	$Piso.position.x = $Player.position.x - 150
