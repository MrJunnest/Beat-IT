extends CharacterBody2D

const RUN_SPEED := 500.0

var gravity := ProjectSettings.get("physics/2d/default_gravity") as float

@onready var animation_player: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	var vertical_direction := Input.get_axis("move_up", "move_down")

	# 确保水平速度为零
	velocity.x = 0

	# 处理垂直移动
	if is_on_floor():
		velocity.y = vertical_direction * RUN_SPEED
	else:
		# 直接设置垂直速度
		velocity.y = vertical_direction * RUN_SPEED

	# 检查攻击按键并播放攻击动画
	if Input.is_action_just_pressed("ui_select"): # 默认的空格键映射为 "ui_select"
		animation_player.play("attack")
	else:
		# 设置动画播放优先级
		if not is_on_floor():
			animation_player.play("jump")
		else:
			animation_player.play("running")

	move_and_slide()
