extends Node2D

const _SPEED:int = 500
const _SLOW_MOTION_MULTIPLIER:int = 50
export var velocity:Vector2

func _process(delta):
	var move_by:float = delta * _SPEED
	
	if not Globals.is_player_moving:
		move_by /= _SLOW_MOTION_MULTIPLIER
		
	self.position += velocity * move_by
