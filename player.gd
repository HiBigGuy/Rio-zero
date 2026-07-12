extends KinematicBody2D

var velocity = Vector2(0, 0)

func _process(delta):
    # Move the body based on its velocity and delta time
    position += velocity * delta

    # Apply gravity to move down
    velocity.y += GRAVITY * delta

    # Check for collisions with the ground and update the velocity accordingly
    var ground = get_node("Ground")
    if ground is Ground:
        velocity.y = 0