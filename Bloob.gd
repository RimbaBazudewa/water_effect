extends RigidBody2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
export(float) var duration = 2.0;
var time = 0.0;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.connect("body_entered", self, "collision_body")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (time >= duration):
		self.queue_free()
		time =0
	time += delta	
	pass
func collision_body(body : Node2D)-> void:
	if (body is RigidBody2D):
		body.apply_central_impulse(Vector2(100,100))

