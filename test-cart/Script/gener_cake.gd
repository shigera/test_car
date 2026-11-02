extends Node2D


var cupcake_Scean = preload("res://Scean/cupcake.tscn")

func _on_timer_timeout():
	var instcake = cupcake_Scean.instantiate()
	instcake.position = Vector2(randi_range(380, 650), 0)
	add_child(instcake)
