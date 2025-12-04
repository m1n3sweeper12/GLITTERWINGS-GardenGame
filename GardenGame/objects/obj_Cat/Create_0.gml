walking = false;

sleeping = false;

goal_x = x;
goal_y = y;

alarm[1] = random_range(10, 20)*second;

enum action {
	walking,
	sleeping,
	idle
}

current_action = action.sleeping;