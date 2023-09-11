extends Node

signal beat

# Called when the node enters the scene tree for the first time.
func _ready():
	var timer = get_node("Timer")
	timer.timeout.connect(_on_timer_beat)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_timer_beat():
	beat.emit()
	print("TICK TOCK MOTHERFOCKER!")
