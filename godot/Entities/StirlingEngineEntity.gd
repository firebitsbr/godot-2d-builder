extends StaticBody2D


onready var animation_player := $AnimationPlayer
onready var tween := $Tween
onready var producer := $PowerProducer


func _ready() -> void:
	animation_player.play("Work")
	tween.interpolate_property(animation_player, "playback_speed", 0, 1, 6)
	tween.interpolate_property(producer, "efficiency", 0, 1, 6)
	tween.start()
	yield(tween, "tween_all_completed")
	$Particles2D.emitting = true
