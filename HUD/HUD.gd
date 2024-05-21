extends CanvasLayer

var score = 0
var highscore= 0
var is_playing = false 

func update_score_label():
	score = score + 100
	$ScoreLabel.text = "Score: %d"%(score)

func update_high_score_label():
	if score > highscore:
		highscore = score
		$HighScorelabel.text = "Highscore: %d"%(highscore)

func _on_button_pressed():
	is_playing = true
	$ScoreTimer.start()
	$Button.visible = false
	


func _on_score_timer_timeout():
	update_score_label()
