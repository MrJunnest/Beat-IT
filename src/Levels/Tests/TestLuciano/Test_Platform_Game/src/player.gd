extends CharacterBody2D

const RUN_SPEED := 200.0
const JUMP_VELOCITY := -300.0

var gravity := ProjectSettings.get("physics/2d/default_gravity") as float

@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _physics_process(delta: float) -> void:
	var direction := Input.get_axis("move_left", "move_right")
	velocity.x = direction * RUN_SPEED
	velocity.y += gravity * delta

	# 检查攻击按键并播放攻击动画
	if Input.is_action_just_pressed("move_attack"):
		animation_player.play("attack")
	else:
		# 根据角色状态播放其他动画
		if is_on_floor():
			if is_zero_approx(direction):
				animation_player.play("idle")
			else:
				animation_player.play("running")
		else:
			animation_player.play("jump")

	# 翻转角色精灵
	if not is_zero_approx(direction):
		sprite_2d.flip_h = direction < 0

	move_and_slide()
