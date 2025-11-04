// Changes the sprite based on direction
if (speed = 0) { direction = 270 }
if (direction >= 45 and direction <= 135) { sprite_index = spr_PlayerNorth }
if (direction > 225 and direction <= 315) { sprite_index = spr_PlayerSouth }
if (direction > 315 and direction < 405) { sprite_index = spr_PlayerEast }
if (direction > 135 and direction <= 225) { sprite_index = spr_PlayerWest }

// Snaps the mouse's X and Y coords to be set to the grid
x_snap = floor(mouse_x / 32) * 32;
y_snap = floor(mouse_y / 32) * 32;

// Snaps your mouse position to the grid before moving the player to the location.
if (mouse_check_button_pressed(mb_left))
{
	x_to = x_snap;
	y_to = y_snap;
	move_towards_point(x_to, y_to, 3);
}

// Stops you from moving past the point you clicked
if (point_distance(x, y, x_to, y_to) < 2)
{
	speed = 0;
	
	x = x_to;
	y = y_to;
	
}

// In the future this should be based on what you have in your hands (Shovel, Crate, Watering Can)
// For now, just makes you plow farmland
if (mouse_check_button_pressed(mb_right))
{
	PlowFarmland();
}




