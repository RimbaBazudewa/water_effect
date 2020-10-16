extends Node2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
export(float )  var rate = 0.2;

var bloob = preload('res://Bloob.tscn')
var pos_body = Vector2(0,0)
var time = 0.0;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pos_body = get_node('position_body');
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(time >= rate):
		instance_bloob()
		time = 0
	time += delta	
	pass

func instance_bloob()->void :
	var node_bloob =bloob.instance()
	node_bloob.set_position(pos_body.get_position())
	node_bloob.apply_central_impulse(Vector2(3, -10));
	add_child(node_bloob)


	
