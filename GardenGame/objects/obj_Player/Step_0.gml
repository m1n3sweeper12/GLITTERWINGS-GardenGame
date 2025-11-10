// Changes the sprite based on direction
if (speed = 0) { direction = 270 }
if (direction > 0 and direction <= 45) { sprite_index = spr_PlayerEast }
if (direction > 45 and direction <= 135) { sprite_index = spr_PlayerNorth }
if (direction > 225 and direction <= 315) { sprite_index = spr_PlayerSouth }
if (direction > 315 and direction <= 360) { sprite_index = spr_PlayerEast }
if (direction > 135 and direction <= 225) { sprite_index = spr_PlayerWest }

// Snaps the mouse's X and Y coords to be set to the grid
x_snap = floor(mouse_x / grid_x) * grid_x;
y_snap = floor(mouse_y / grid_y) * grid_y;

// Snaps your mouse position to the grid before moving the player to the location.
if (mouse_check_button_pressed(mb_left))
{

	x_to = x_snap;
	y_to = y_snap;
	move_towards_point(x_to, y_to, 3);

}

// In the future this should be based on what you have in your hands (Shovel, Crate, Watering Can)
// For now, just makes you plow farmland
if (mouse_check_button_pressed(mb_right))
{
	switch(current_item)
	{

		case equipped.crateEmpty:
		// Click on fully grown plant? Remove plant and change to that plant's crate
		break;
	
		// SEEDS
	
		case equipped.seedsFire:
		// If right clicking tilled ground, then plant fire plant
		break;
		
		case equipped.seedsEarth:
		// If right clicking tilled ground, then plant earth plant
		break;

		case equipped.seedsWater:
		// If right clicking tilled ground, then plant water plant
		break;

		case equipped.seedsAir:
		// If right clicking tilled ground, then plant air plant
		break;
		
		// TOOLS
		
		case equipped.wateringcan:
		// If on a plant, water it.
		break;

		case equipped.shovel:
		PlowFarmland();
		break;
		
		// If you have nothing with a use equipped
		
		default:
		break;
	}
}

// Stops you from moving past the point you clicked
if (point_distance(x, y, x_to, y_to) < 2)
{
	speed = 0;
	
	x = x_to;
	y = y_to;
	
}

