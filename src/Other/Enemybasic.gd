extends Path2D

onready var follow = get_node("follow")

var anger: = 0

export var speed: = 6

export var max_anger: = 5

var anger_speed: = 1

export var anger_change: = 1

var tween

func _ready():
	set_process(true)
	tween = Tween.new()
	add_child(tween)
	tween.interpolate_property(follow, "unit_offset", 0, 1, speed-anger_speed, tween.TRANS_LINEAR, tween.EASE_IN_OUT)
	tween.set_repeat(true)
	tween.start()

func _physics_process(delta):
	pass

func _anger(body):
	if anger < max_anger:
		anger_speed += anger_change
		anger += 1
		#print(speed*anger_speed)
		tween.set_speed_scale(anger_speed)
		get_node("follow/Enemy/normal demon").visible = false



