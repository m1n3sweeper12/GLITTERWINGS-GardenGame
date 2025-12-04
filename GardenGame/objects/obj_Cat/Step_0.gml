if(current_action = action.sleeping) {
	sprite_index = spr_catSleep;
} else if(current_action = action.idle) {
	if (direction >= 0 and direction <= 45) { sprite_index = spr_catIdleEast; }
	if (direction > 45 and direction <= 135) { sprite_index = spr_catIdleNorth; }
	if (direction > 225 and direction <= 315) { sprite_index = spr_catIdleSouth; }
	if (direction > 315 and direction <= 360) { sprite_index = spr_catIdleEast; }
	if (direction > 135 and direction <= 225) { sprite_index = spr_catIdleWest; }
} else { // walking
	var comp_x = floor(x/grid_x)*grid_x;
	var comp_y = floor(y/grid_y)*grid_y;
	if(floor(comp_x) = floor(goal_x) and floor(comp_y) = floor(goal_y)) {
		speed = 0;
	} else {
		move_towards_point(goal_x, goal_y, 2);
	}
	
	if(speed > 0) {
		if (direction >= 0 and direction <= 45) { sprite_index = spr_catEast; }
		if (direction > 45 and direction <= 135) { sprite_index = spr_catNorth; }
		if (direction > 225 and direction <= 315) { sprite_index = spr_catSouth; }
		if (direction > 315 and direction <= 360) { sprite_index = spr_catEast; }
		if (direction > 135 and direction <= 225) { sprite_index = spr_catWest; }
	} else {
		if (direction >= 0 and direction <= 45) { sprite_index = spr_catIdleEast; }
		if (direction > 45 and direction <= 135) { sprite_index = spr_catIdleNorth; }
		if (direction > 225 and direction <= 315) { sprite_index = spr_catIdleSouth; }
		if (direction > 315 and direction <= 360) { sprite_index = spr_catIdleEast; }
		if (direction > 135 and direction <= 225) { sprite_index = spr_catIdleWest; }
	}
}