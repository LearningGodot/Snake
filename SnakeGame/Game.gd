extends Node

signal beat

enum SnakeDirection {UP, DOWN, LEFT, RIGHT}

static var CurrentDirection

# Called when the node enters the scene tree for the first time.
func _ready():
	var timer = get_node("Timer")
	timer.timeout.connect(_on_timer_beat)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("move_right"):
		CurrentDirection = SnakeDirection.RIGHT
	if Input.is_action_pressed("move_left"):
		CurrentDirection = SnakeDirection.LEFT
	if Input.is_action_pressed("move_down"):
		CurrentDirection = SnakeDirection.DOWN
	if Input.is_action_pressed("move_up"):
		CurrentDirection = SnakeDirection.UP

func _on_timer_beat():
	beat.emit()
	print("TICK TOCK MOTHERFOCKER!")
